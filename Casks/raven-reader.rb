cask "raven-reader" do
  version "1.0.0"
  sha256 "9b964d8e5fbbb646b7a8515fd68cba5dbb1592a3c030715ab2c14eeee84d4878"

  # download.helloefficiency.com/ravenreader/ was verified as official when first introduced to the cask
  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
