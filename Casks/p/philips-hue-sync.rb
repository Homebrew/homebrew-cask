cask "philips-hue-sync" do
  version "1.12.5.75,c091f498-0e07-4088-9650-b5df076b4a90,75"
  sha256 "b8a3f50a9742911929acd35d8fdf0481b71a7825108fb8b5add9e280306d14f5"

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
