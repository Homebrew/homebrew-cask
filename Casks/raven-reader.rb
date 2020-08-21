cask "raven-reader" do
  version "1.0.0"
  sha256 "9b964d8e5fbbb646b7a8515fd68cba5dbb1592a3c030715ab2c14eeee84d4878"

  url "https://download.ravenreader.app/ravenreader/Raven%20Reader-#{version}-mac.zip"
  appcast "https://download.ravenreader.app/ravenreader/latest-mac.yml"
  name "Raven Reader"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
