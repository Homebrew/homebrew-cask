cask "spamsieve" do
  version "2.9.44"
  sha256 "ee7e5fff0c7d7e11e9b00863c6d8ff2062d20a0c78844c2f687628f18b31fa83"

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
