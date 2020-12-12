cask "spamsieve" do
  version "2.9.41"
  sha256 "9241b80bfe2687eb4cc058b5875f0ad964c79003e9490834ff1ee59206f5ed66"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast "https://c-command.com/spamsieve/"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  app "SpamSieve.app"
end
