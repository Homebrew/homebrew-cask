cask "missive" do
  version "9.38.1"
  sha256 "aa10d40104a322ef119575e52ce8cf96a80f2afafca055a32ed168c3110e8e13"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
