cask "robo-3t" do
  version "1.4.0,12e54cc"
  sha256 "a95ef2029a0d430b935dcd29dc18d48c86b3ccc92e26855db1afd256ef0ccf5b"

  # download.studio3t.com was verified as official when first introduced to the cask
  url "https://download.studio3t.com/robomongo/mac/robo3t-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg"
  appcast "https://robomongo.org/download"
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
