cask "strawberry-wallpaper" do
  version "1.4.2"
  sha256 :no_check

  # sw.taoacat.com/ was verified as official when first introduced to the cask
  url "http://sw.taoacat.com/Strawberry%20Wallpaper-mac.dmg"
  appcast "http://sw.taoacat.com/version/latest-mac.yml"
  name "Strawberry Wallpaper"
  homepage "https://aitexiaoy.github.io/Strawberry-Wallpaper/"

  app "Strawberry Wallpaper.app"
end
