cask "spamsieve" do
  version "2.9.51"
  sha256 "0828edb505bfcc6e794cb4044890b50832a6477d47a8241675e9171cba1dcbce"

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
