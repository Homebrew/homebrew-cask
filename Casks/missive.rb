cask "missive" do
  version "9.44.1"
  sha256 "1939edf270b963360e4c950862cc7b119b1d7ed8514c85b6a08a23ea22860bca"

  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg",
      verified: "d1weoh55n7oehu.cloudfront.net/"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
