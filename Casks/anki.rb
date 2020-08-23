cask "anki" do
  version "2.1.31"
  sha256 "731bd8a164af5b52c14a0ad5b2dbffb746b5798008ad781a520141990a326df4"

  # github.com/ankitects/anki/ was verified as official when first introduced to the cask
  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg"
  appcast "https://changes.ankiweb.net/README.md"
  name "Anki"
  homepage "https://apps.ankiweb.net/"

  depends_on macos: ">= :sierra"

  app "Anki.app"

  zap trash: [
    "~/Library/Application Support/Anki",
    "~/Library/Application Support/Anki2",
  ]
end
