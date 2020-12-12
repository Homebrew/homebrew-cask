cask "raven-reader" do
  version "1.0.14"
  sha256 "6bbeca4f1f41db9b12a56c1dd9bc0b03b7cf6ffc13c71e76aa6ee000b59dacb7"

  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg",
      verified: "download.helloefficiency.com/ravenreader/"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
