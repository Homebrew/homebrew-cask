cask "robo-3t" do
  version "1.4.1,122dbd9"
  sha256 "02cf60fd969e7c2f7037bb567f558e436618f9a707904f786d1f03f97193a263"

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
