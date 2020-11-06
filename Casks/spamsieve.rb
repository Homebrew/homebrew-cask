cask "spamsieve" do
  version "2.9.40"
  sha256 "e0de302eb6a30f45490c48c4e075a8a811657c770d1defa61de56fcaf2e06930"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  appcast "https://c-command.com/spamsieve/"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  app "SpamSieve.app"
end
