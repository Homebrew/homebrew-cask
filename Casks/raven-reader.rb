cask "raven-reader" do
  version "1.0.2"
  sha256 "cffa9a593347ea3a02ae20973fc77ddb625b892288f22edcd32a83ac7778dc30"

  # download.helloefficiency.com/ravenreader/ was verified as official when first introduced to the cask
  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
