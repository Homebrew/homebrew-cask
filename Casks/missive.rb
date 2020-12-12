cask "missive" do
  version "9.42.0"
  sha256 "e8e6966ab5b74ffc6eaa4f75c3494ae258e9505cdb3bfc870246e831c4c44555"

  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg",
      verified: "d1weoh55n7oehu.cloudfront.net/"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
