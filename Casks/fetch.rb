cask "fetch" do
  version "5.8.2,5.8.1354"
  sha256 "839a49e2e820b0bb6987a273fa18b0aaae2d6cd8b5aac5b7d41cd018d5e74d68"

  url "https://fetchsoftworks.com/fetch/download/Fetch_#{version.csv.first}.zip"
  name "Fetch"
  desc "File transfer client"
  homepage "https://fetchsoftworks.com/fetch/"

  livecheck do
    url "https://updates.fetchsoftworks.com/list/fetch-#{version.major}K0-release.xml"
    strategy :sparkle
  end

  app "Fetch.app"
end
