cask "philips-hue-sync" do
  version "1.12.4.74,6e0c1322-16b4-4753-acb4-86b8a73179d0,74"
  sha256 "4383bf906a01e43c345f536d26dcb951aa7956df69e73c1bc48af67b072cd042"

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
