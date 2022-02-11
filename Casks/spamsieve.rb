cask "spamsieve" do
  version "2.9.48"
  sha256 "b6809aa81a5c10e7adc6708f5d60ac0b2fc10ed9d0c5bcf201eb6fbb43af256e"

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
