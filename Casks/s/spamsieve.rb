cask "spamsieve" do
  version "3.0.1"
  sha256 "55eeee09b58f391427d9d4ba7df756f954fc8615c4ec55032c548edd0a8ebdd1"

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
