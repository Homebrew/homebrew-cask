cask "nutstore" do
  version "5.1.7"
  sha256 :no_check

  url "https://www.jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg"
  name "Nutstore"
  desc "Cloud storage service platform"
  homepage "https://www.jianguoyun.com/"

  livecheck do
    url "https://help.jianguoyun.com/?p=1419"
    regex(%r{Mac(?:/Linux)?\s+(\d+(?:\.\d+)+)}i)
  end

  installer manual: "Nutstore Installer.app"

  uninstall launchctl:  "net.nutstore.agent",
            quit:       [
              "net.nutstore.NutstoreJavaBE",
              "net.nutstore.osxapp",
              "net.nutstore.osxapp.FinderSyncExtension",
            ],
            login_item: "Nutstore",
            delete:     "/Applications/Nutstore.app"

  zap trash: [
    "~/Library/Saved Application State/net.nutstore.osxapp.nutstoreInstaller.savedState",
    "~/Library/Preferences/net.nutstore.osxapp.plist",
    "~/Library/Preferences/net.nutstore.NutstoreJavaBE.plist",
  ]
end
