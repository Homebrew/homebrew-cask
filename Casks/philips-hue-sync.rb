cask "philips-hue-sync" do
  version "1.10.2.43"
  sha256 :no_check

  url "https://firmware.meethue.com/v1/download?deviceTypeId=HueSyncMac"
  name "Philips Hue Sync"
  desc "Control your smart light system"
  homepage "https://www2.meethue.com/en-us/entertainment/hue-sync"

  livecheck do
    url :url
    regex(/HueSyncInstaller[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  pkg "HueSyncInstaller.pkg"

  preflight do
    staged_path.glob("HueSyncInstaller_*.pkg").first.rename(staged_path/"HueSyncInstaller.pkg")
  end

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
