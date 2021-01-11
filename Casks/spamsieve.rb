cask "spamsieve" do
  version "2.9.41"
  sha256 "9241b80bfe2687eb4cc058b5875f0ad964c79003e9490834ff1ee59206f5ed66"

  url "https://c-command.com/downloads/SpamSieve-#{version}.dmg"
  name "SpamSieve"
  desc "Spam filtering extension for e-mail clients"
  homepage "https://c-command.com/spamsieve/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/SpamSieve-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SpamSieve.app"
end
