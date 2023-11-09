cask "oversight" do
  version "2.2.1"
  sha256 "030790bb9378383f35c5f6aabee6580e1d6357f0adb620a221168bc042a0b691"

  url "https://github.com/objective-see/OverSight/releases/download/v#{version}/OverSight_#{version}.zip",
      verified: "github.com/objective-see/OverSight/"
  name "OverSight"
  desc "Monitors computer mic and webcam"
  homepage "https://objective-see.com/products/oversight.html"

  depends_on macos: ">= :monterey"

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
