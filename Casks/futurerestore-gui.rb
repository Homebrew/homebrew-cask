cask "futurerestore-gui" do
  version "1.91"
  sha256 "f54ff9b722e901505560a8032001c9e6da98015c60dd94ce3787e192f595ece5"

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
