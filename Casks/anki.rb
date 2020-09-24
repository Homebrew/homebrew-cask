cask "anki" do
  version "2.1.34"
  sha256 "dbba818c66b483b20433a16f5ae7500f4e9350f7d8818264756746a23d98b10d"

  # github.com/ankitects/anki/ was verified as official when first introduced to the cask
  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg"
  appcast "https://changes.ankiweb.net/README.md"
  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  depends_on macos: ">= :sierra"

  app "Anki.app"

  zap trash: [
    "~/Library/Application Support/Anki",
    "~/Library/Application Support/Anki2",
  ]
end
