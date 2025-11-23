cask "philips-hue-sync" do
  version "1.13.1.83,367fa136-d05e-4de6-8f9b-318fed481842,83"
  sha256 "520d2a6895ae0fee73718a9a6a1be356afe346daa1ae90783750bff3cb12d354"

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
