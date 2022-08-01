cask "futurerestore-gui" do
  version "1.98.1"
  sha256 "1fd4b4bbc35c063354b64025289baa74af64bc6db8ed34829e6f8074f552dea5"

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
