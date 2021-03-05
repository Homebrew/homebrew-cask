cask "raven-reader" do
  version "1.0.47"
  sha256 "ce3faa5ccfffa6f8aee7d1cae73f662ef46f5b09e62f460789952ee854c7a5a6"

  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg",
      verified: "download.helloefficiency.com/ravenreader/"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
