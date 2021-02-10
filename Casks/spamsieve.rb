cask "spamsieve" do
  version "2.9.42"
  sha256 "57ea89729714da64388e98e4a1ff0f867a83454290adb876367a2fc15961f29b"

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
