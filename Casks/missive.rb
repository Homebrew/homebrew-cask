cask "missive" do
  version "9.41.0"
  sha256 "80f4dd7ded9dc6fbe0574d39e66bf9c66ed18eeb0d7ab546507dabdd229ce57e"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
