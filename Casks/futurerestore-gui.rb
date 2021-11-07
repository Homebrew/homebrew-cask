cask "futurerestore-gui" do
  version "1.94"
  sha256 "99bd76aec331bd0018491b841f697ed8b05d8579cb6b5026111403a55524e8a4"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: "~/FutureRestoreGUI"
end
