cask "figmadaemon" do
  version "20"
  sha256 :no_check

  url "https://font-daemon.figma.com/FigmaInstaller.pkg"
  name "Figma Font Installers"
  homepage "https://www.figma.com/"

  livecheck do
    url "https://font-daemon.figma.com/mac/versions.xml"
    strategy :sparkle
  end

  pkg "FigmaInstaller.pkg"

  uninstall launchctl: "com.figma.daemon"

  zap trash: [
    "~/Library/Preferences/com.figma.FigmaDaemon.plist",
    "~/Library/Caches/com.figma.FigmaDaemon",
  ]
end
