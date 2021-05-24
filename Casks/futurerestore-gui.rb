cask "futurerestore-gui" do
  version "1.80"
  sha256 "73e6df55741c25dc846efa0220e2bd46275788221a6883eeb42b6647ee7c0243"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.zip"
  name "futurerestore-gui"
  desc "Cross-platform interface for FutureRestore, written in Java with Swing"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: [
    "~/FutureRestoreGUI/extracted/",
    "~/FutureRestoreGUI/preferences.properties",
    "~/FutureRestoreGUI/*.tar.xz",
  ]
end
