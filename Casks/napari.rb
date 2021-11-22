cask "napari" do
  version "0.4.12"
  sha256 "fd76d7b5a7990e3f6deb06785d685c9f14672c175b2e5f9a95bbd90ab1a3519e"

  url "https://github.com/napari/napari/releases/download/v#{version}/napari-#{version}-macOS-x86_64.zip",
      verified: "github.com/napari/napari/"
  name "napari"
  desc "Multi-dimensional image viewer for Python"
  homepage "https://napari.org/"

  depends_on macos: "<= :catalina"
  container nested: "napari-#{version}.dmg"

  app "napari.app"

  zap trash: "~/.config/napari/"
end
