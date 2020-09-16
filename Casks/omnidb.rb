cask "omnidb" do
  version "2.17.0"
  sha256 "8fdd482d45d1b2d4d330074d94238d91cc91242239a3ebb62ccc3319bacd5d16"

  url "https://omnidb.org/dist/#{version}/omnidb-app_#{version}-mac.dmg"
  appcast "https://github.com/OmniDB/OmniDB/releases.atom"
  name "OmniDB"
  desc "Web tool for database management"
  homepage "https://omnidb.org/"

  app "OmniDB.app"
end
