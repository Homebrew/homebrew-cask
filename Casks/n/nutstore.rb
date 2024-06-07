cask "nutstore" do
  version "6.3.2"
  sha256 :no_check

  url "https://www.jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg"
  name "Nutstore"
  desc "Cloud storage service platform"
  homepage "https://www.jianguoyun.com/"

  livecheck do
    url "https://help.jianguoyun.com/?p=1419"
    regex(%r{Mac(?:/Linux)?\s+(\d+(?:\.\d+)+)}i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  installer script: {
    executable: "坚果云安装程序.app/Contents/MacOS/NutstoreOnlineInstaller",
    args:       ["-q"],
  }

  uninstall launchctl:  "net.nutstore.agent",
            quit:       [
              "net.nutstore.NutstoreJavaBE",
              "net.nutstore.osxapp",
              "net.nutstore.osxapp.FinderSyncExtension",
            ],
            login_item: "Nutstore",
            delete:     "/Applications/Nutstore.app"

  zap trash: [
    "~/Library/Preferences/net.nutstore.NutstoreJavaBE.plist",
    "~/Library/Preferences/net.nutstore.osxapp.plist",
    "~/Library/Saved Application State/net.nutstore.osxapp.nutstoreInstaller.savedState",
  ]
end
