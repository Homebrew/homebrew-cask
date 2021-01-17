cask "napari" do
  version "0.4.3"
  sha256 "daed110aaed4a12a7aeee00e06b7b1823f618e04bb5ae7f7fa48f584bbf709d7"

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
