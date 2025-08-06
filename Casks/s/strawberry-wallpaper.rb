cask "strawberry-wallpaper" do
  version "1.4.2"
  sha256 "733632a104fec8efc5024677332978d92d3375b00f877b50a95d0f450184f8e9"

  url "https://github.com/aitexiaoy/Strawberry-Wallpaper/releases/download/#{version}/Strawberry.Wallpaper-mac.dmg",
      verified: "github.com/aitexiaoy/Strawberry-Wallpaper/"
  name "Strawberry Wallpaper"
  desc "Automatically update wallpapers of major galleries"
  homepage "https://aitexiaoy.github.io/Strawberry-Wallpaper/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Strawberry Wallpaper.app"

  caveats do
    requires_rosetta
  end
end
