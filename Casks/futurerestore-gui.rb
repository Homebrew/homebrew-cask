cask "futurerestore-gui" do
  version "1.95"
  sha256 "99398637c36c33174cdff6d8181156bf44349a81237944a4c59416af9e334f54"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  app "FutureRestore GUI.app"

  zap trash: "~/FutureRestoreGUI"
end
