cask "raven-reader" do
  version "1.0.1"
  sha256 "72131cf00bf6dd006e3c5e9f877083787b2becb43cca5de4c477194d49dd9c9e"

  # download.helloefficiency.com/ravenreader/ was verified as official when first introduced to the cask
  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
