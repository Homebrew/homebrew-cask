cask "futurerestore-gui" do
  version "1.93"
  sha256 "a873f5c9f7befe67a47987e11ffbcf845998e002cd551833f5c37cff8c7581bd"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: [
    "~/FutureRestoreGUI/extracted/",
    "~/FutureRestoreGUI/preferences.properties",
    "~/FutureRestoreGUI/*.tar.xz",
  ]
end
