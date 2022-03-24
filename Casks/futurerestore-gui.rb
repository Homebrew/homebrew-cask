cask "futurerestore-gui" do
  version "1.98.00"
  sha256 "268e23082f9212fda3c083205c3a4ed0c19b491cf010fcfa803c3ecd29ae87bd"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: "~/FutureRestoreGUI"
end
