cask "oversight" do
  version "2.1.0"
  sha256 "ae2535a7081d879eec51978e3fc07138980ff7c4afdab2bce0fc88998cb9bc99"

  url "https://github.com/objective-see/OverSight/releases/download/v#{version}/OverSight_#{version}.zip",
      verified: "github.com/objective-see/OverSight"
  name "OverSight"
  desc "Monitors computer mic and webcam"
  homepage "https://objective-see.com/products/oversight.html"

  depends_on macos: ">= :catalina"

  installer script: {
    executable: "#{staged_path}/OverSight Installer.app/Contents/MacOS/OverSight Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/OverSight Installer.app/Contents/MacOS/OverSight Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Caches/com.objective-see.oversight",
    "~/Library/Caches/com.objective-see.OverSightHelper",
    "~/Library/Preferences/com.objective-see.oversight.plist",
    "~/Library/Preferences/com.objective-see.OverSightHelper.plist",
  ]
end
