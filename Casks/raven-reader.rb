cask "raven-reader" do
  version "1.0.46"
  sha256 "aae5863b6f893fe8bdb4af1aaf154e4b8dc7fc40f9a6e6a22df5d254583b88c4"

  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg",
      verified: "download.helloefficiency.com/ravenreader/"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
