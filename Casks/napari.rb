cask "napari" do
  version "0.4.6"
  sha256 "0986b299c85de028da8240fad08dd42728db0775de9e66f09b6971e781c47dfd"

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
