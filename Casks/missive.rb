cask "missive" do
  version "9.39.2"
  sha256 "6ad55f5e4a1f00a97e082cbcf8350cc1b1684df074deb082ef9b3ec02cbc6ac9"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
