cask "napari" do
  version "0.4.10"
  sha256 "1fc7f58ee85ec9a51a3f16f38118b380c194bc15e94f12294009100c5a3004c6"

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
