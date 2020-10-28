cask "robo-3t" do
  version "1.4.2,8650949"
  sha256 "de91074f726f03976bad5c64c73acfc16ecceb7f50868916cb1058d0fc965085"

  # download.studio3t.com was verified as official when first introduced to the cask
  url "https://download.studio3t.com/robomongo/mac/robo3t-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg"
  appcast "https://github.com/Studio3T/robomongo/releases.atom"
  name "Robo 3T (formerly Robomongo)"
  desc "MongoDB management tool (formerly Robomongo)"
  homepage "https://robomongo.org/"

  app "Robo 3T.app"

  uninstall quit: "Robo 3T"

  zap trash: [
    "~/.3T/robo-3t/",
    "~/Library/Saved Application State/Robo 3T.savedState",
  ]
end
