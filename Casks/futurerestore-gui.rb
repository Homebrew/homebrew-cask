cask "futurerestore-gui" do
  version "1.97.1"
  sha256 "da8621c2aebbe80437cbedcd1c809ad8d322e24e5018d1af99b3704169cd28cb"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: "~/FutureRestoreGUI"
end
