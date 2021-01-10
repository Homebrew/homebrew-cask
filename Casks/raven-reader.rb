cask "raven-reader" do
  version "1.0.27"
  sha256 "65ab185da5dad66cfd3f0da214051820e4265700beb6479cf110c56f5bab9b77"

  url "https://download.helloefficiency.com/ravenreader/Raven%20Reader-#{version}.dmg",
      verified: "download.helloefficiency.com/ravenreader/"
  appcast "https://ridereceiptspro.sfo2.digitaloceanspaces.com/ravenreader/latest-mac.yml"
  name "Raven Reader"
  desc "News reader with flexible settings"
  homepage "https://ravenreader.app/"

  auto_updates true

  app "Raven Reader.app"
end
