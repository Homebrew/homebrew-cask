cask "raven-reader" do
  version "1.0.34"
  sha256 "f15c2ce84dde8c89c50df41a96b2375739558b184b0cf76bf066ef135f2ac422"

  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg",
      verified: "download.helloefficiency.com/ravenreader/"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
