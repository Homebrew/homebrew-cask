cask "missive" do
  version "9.42.0"
  sha256 "e8e6966ab5b74ffc6eaa4f75c3494ae258e9505cdb3bfc870246e831c4c44555"

  # d1weoh55n7oehu.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
