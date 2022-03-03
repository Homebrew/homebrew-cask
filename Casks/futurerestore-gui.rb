cask "futurerestore-gui" do
  version "1.96"
  sha256 "9c90c6ad8f2d7548567c1d792418ced56b788a9c12d929930d3e5d68dcbe6459"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: "~/FutureRestoreGUI"
end
