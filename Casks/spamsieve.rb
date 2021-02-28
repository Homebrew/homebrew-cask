cask "spamsieve" do
  version "2.9.43"
  sha256 "011f643d0fdb81ee321ea8e7b48a45f89949b6d9bf3b592a5ee62efa80f2cbea"

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
