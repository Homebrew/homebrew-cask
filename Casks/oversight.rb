cask "oversight" do
  version "1.2.0"
  sha256 "786eea6de3da8a15919159b51a7753ef7ecb26a0ed638725f7925fd0392a6fa9"

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/OverSight_#{version}.zip"
  appcast "https://objective-see.com/products/changelogs/OverSight.txt"
  name "OverSight"
  desc "Monitors computer mic and webcam"
  homepage "https://objective-see.com/products/oversight.html"

  depends_on macos: ">= :yosemite"

  installer script: {
    executable: "#{staged_path}/OverSight_Installer.app/Contents/MacOS/OverSight_Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/OverSight_Installer.app/Contents/MacOS/OverSight_Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Application Support/Objective-See/OverSight",
    "~/Library/Caches/com.objective-see.OverSight",
    "~/Library/Caches/com.objective-see.OverSightHelper",
    "~/Library/Preferences/com.objective-see.OverSight.plist",
    "~/Library/Preferences/com.objective-see.OverSightHelper.plist",
  ]

  caveats "Due to an upstream bug, the installer hangs. To solve, manually close OverSight from the menu bar by " \
          "clicking on the umbrella icon and then choosing “quit”. As soon as brew cask moves on, you may reopen " \
          "OverSight."
end
