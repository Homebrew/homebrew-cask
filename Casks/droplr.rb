cask "droplr" do
  version "5.7.2,426"
  sha256 "69ff334f9ec2925dc1b1e30dc562042435b736bbf03f3de9fcf511dcc302c176"

  url "https://files.droplr.com/apps/mac/Droplr-#{version.before_comma.no_dots}.dmg"
  appcast "https://droplr.com/appcast/appcast-sandbox.xml"
  name "Droplr"
  homepage "https://droplr.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Droplr.app"
end
