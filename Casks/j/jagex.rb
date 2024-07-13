cask "jagex" do
  version "1.17.1"
  sha256 :no_check

  url "https://cdn.jagex.com/Jagex%20Launcher%20Installer.dmg"
  name "jagex"
  desc "Official Jagex Launcher"
  homepage "https://www.jagex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  installer manual: "Jagex Launcher Installer.app"

  uninstall quit:   "com.jagex.launcher",
            delete: "/Applications/Jagex Launcher.app"

  zap trash: "~~/Library/Application Support/Jagex Launcher"

  caveats do
    requires_rosetta
  end
end
