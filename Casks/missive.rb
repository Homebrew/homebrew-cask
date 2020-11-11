cask "missive" do
  version "9.41.2"
  sha256 "d77acfe015442579e1546faf3acf62d7a0d15cf265d09e6aa756c3535f050722"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
