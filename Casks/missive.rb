cask "missive" do
  version "9.44.1"
  sha256 "fdce6198d29dda74565d9edebb4b6183b92539862ead53c7901feb840cbe278b"

  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg",
      verified: "d1weoh55n7oehu.cloudfront.net/"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
