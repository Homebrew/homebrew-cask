cask "futurerestore-gui" do
  version "1.98"
  sha256 "43c366f473bd977d700f2b650882e9f22c8ff65c870e7014190eaaac67eef97b"

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
