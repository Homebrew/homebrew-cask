cask "strawberry-wallpaper" do
  version "1.4.2"
  sha256 :no_check

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
end
