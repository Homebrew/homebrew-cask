cask "futurerestore-gui" do
  version "1.90"
  sha256 "05e237fa9ad404be4b0fe2ff7b2cf862062ba98e34345ad0e39b1532fc062def"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
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
