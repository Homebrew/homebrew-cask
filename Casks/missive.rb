cask "missive" do
  version "9.45.0"
  sha256 "5cf291c7b592c8fe02c702412ec788ec722a16ef4b60fc50e55d8cf9d72b8531"

  url "https://d1weoh55n7oehu.cloudfront.net/#{version}/Missive-#{version}.dmg",
      verified: "d1weoh55n7oehu.cloudfront.net/"
  appcast "https://download.missiveapp.com/electron-updater/stable/darwin/latest-mac.yml"
  name "missive"
  homepage "https://missiveapp.com/"

  app "Missive.app"
end
