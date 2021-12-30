cask "strawberry-wallpaper" do
  version "1.4.2"
  sha256 :no_check

  url "http://sw.taoacat.com/Strawberry%20Wallpaper-mac.dmg",
      verified: "sw.taoacat.com/"
  name "Strawberry Wallpaper"
  homepage "https://aitexiaoy.github.io/Strawberry-Wallpaper/"

  livecheck do
    url "http://sw.taoacat.com/version/latest-mac.yml"
    strategy :electron_builder
  end

  app "Strawberry Wallpaper.app"
end
