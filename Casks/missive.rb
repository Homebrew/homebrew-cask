cask "missive" do
  version "9.37.0"
  sha256 "1fc2a7a4d35e32036d7a46dbbdc9f5f5b61f09c963c25f5cebf58c00e0c3f64b"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
