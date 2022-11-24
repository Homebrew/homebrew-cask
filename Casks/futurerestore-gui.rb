cask "futurerestore-gui" do
  version "1.98.2"
  sha256 "04caddbc02f78e70e9f9a72a62f4165e9315673cdb403af7e05418a6184df676"

  url "https://github.com/CoocooFroggy/FutureRestore-GUI/releases/download/v#{version}/FutureRestore-GUI-Mac-#{version}.dmg"
  name "FutureRestore GUI"
  desc "Graphical interface for FutureRestore"
  homepage "https://github.com/CoocooFroggy/FutureRestore-GUI/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FutureRestore GUI.app"

  zap trash: "~/FutureRestoreGUI"
end
