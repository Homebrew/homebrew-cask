cask "spamsieve" do
  version "3.0.2"
  sha256 "a259cf254cdee6142ab87887be1a90a2718c4490ece736edccd7981367c88801"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SpamSieve[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "SpamSieve.app"
end
