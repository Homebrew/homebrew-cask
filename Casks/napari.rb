cask "napari" do
  version "0.4.2"
  sha256 "8a0481bf710fd2225a7777dbc94343caaa03928940d66e83b80d326ea61650ae"

  url "https://github.com/napari/napari/releases/download/v#{version}/napari-#{version}-macOS.zip",
      verified: "github.com/napari/napari/"
  appcast "https://github.com/napari/napari/releases.atom"
  name "napari"
  desc "Multi-dimensional image viewer for Python"
  homepage "https://napari.org/"

  depends_on macos: "<= :catalina"
  container nested: "napari-#{version}.dmg"

  app "napari.app"

  zap trash: "~/.config/napari/"
end
