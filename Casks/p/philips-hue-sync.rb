cask "philips-hue-sync" do
  version "1.13.0.77,cb2f5b01-9dde-40c1-abe8-b7b02dc4e302,77"
  sha256 "fccfcaa8e081f1210adfef79b9d290d779d3b51589dea2059b81bf2ba73d106a"

  url "https://firmware.meethue.com/storage/huesyncmac/#{version.csv.third}/#{version.csv.second}/HueSyncInstaller_#{version.csv.first}.pkg",
      verified: "firmware.meethue.com/storage/huesyncmac/"
  name "Philips Hue Sync"
  desc "Control your smart light system"
  homepage "https://www.philips-hue.com/en-us/explore-hue/propositions/entertainment/sync-with-pc"

  livecheck do
    url "https://firmware.meethue.com/v1/download?deviceTypeId=HueSyncMac"
    regex(%r{/([^/]+)/([^/]+)/HueSyncInstaller[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[2]},#{match[1]}"
    end
  end

  pkg "HueSyncInstaller_#{version.csv.first}.pkg"

  uninstall quit:    [
              "com.lighting.huesync",
              "com.lighting.huesync.watchdog",
            ],
            pkgutil: "com.lighting.huesync"

  zap trash: [
    "~/Library/Application Support/com.lighting.huesync",
    "~/Library/Caches/Hue Sync",
    "~/Library/Preferences/com.lighting.huesync.Hue Sync.plist",
  ]
end
