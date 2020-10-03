cask "raven-reader" do
  version "1.0.3"
  sha256 "46133dc7dbb62f97234e0f9644843987c360a00a7d3fc36dafcb787bdb00c220"

  # download.helloefficiency.com/ravenreader/ was verified as official when first introduced to the cask
  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
