cask "philips-hue-sync" do
  version "1.12.3.73,5e4840c1-2e26-41fe-a922-317342dff542,73"
  sha256 "f280976e0dbd29cae45a5c834c07b41705fc126fcf3f9b26cb93b9be8d1da22a"

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

  no_autobump! because: :requires_manual_review

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
