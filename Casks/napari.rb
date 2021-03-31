cask "napari" do
  version "0.4.7"
  sha256 "5f6151053cfc09d8ed569dffc0b95ef66861597ad81e19cb99f875b620dcf3d8"

  url "https://github.com/napari/napari/releases/download/v#{version}/napari-#{version}-macOS.zip",
      verified: "github.com/napari/napari/"
  name "napari"
  desc "Multi-dimensional image viewer for Python"
  homepage "https://napari.org/"

  depends_on macos: "<= :catalina"
  container nested: "napari-#{version}.dmg"

  app "napari.app"

  zap trash: "~/.config/napari/"
end
