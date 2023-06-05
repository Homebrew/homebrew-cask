cask "spamsieve" do
  version "2.9.52"
  sha256 "5f08171ee69616b1948d7ddd8d003152552841092a831ef2f145649e4b211406"

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
