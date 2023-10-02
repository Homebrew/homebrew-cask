cask "spamsieve" do
  version "3.0"
  sha256 "a7ead3be30dfc4f92189f8738851fa4f19f17a8b3598fb8178d643ee01a3be2b"

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
