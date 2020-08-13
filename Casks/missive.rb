cask "missive" do
  version "9.33.0"
  sha256 "bd370d44b67760a047ebaa020048a1cacfe7db2ab6d8049d54e46f1227e08e91"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
