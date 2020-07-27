cask "figmadaemon" do
  version "17"
  sha256 "97501a70cbba84e329e284ee223d6236d409102f58deb0282e705f2a14b171ea"

  url "https://font-daemon.figma.com/mac/FigmaDaemon.#{version}.zip"
  appcast "https://font-daemon.figma.com/mac/versions.xml"
  name "Figma Font Installers"
  homepage "https://www.figma.com/"

  app "FigmaDaemon.app"

  zap trash: [
    "~/Library/Preferences/com.figma.FigmaDaemon.plist",
    "~/Library/Caches/com.figma.FigmaDaemon",
  ]
end
