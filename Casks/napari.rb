cask "napari" do
  version "0.4.4"
  sha256 "90323a2396bd16869783a1ec2a8df7dd5a62a3749b27db4523e00bc914f6f16b"

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
