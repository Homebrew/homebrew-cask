cask "raven-reader" do
  version "1.0.9"
  sha256 "f1a2781976b0f43c4e5c449b22a7cd1e75a25129707b742a759439800fcde81a"

  # download.helloefficiency.com/ravenreader/ was verified as official when first introduced to the cask
  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
