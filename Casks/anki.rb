cask "anki" do
  version "2.1.28"
  sha256 "c4eec38d80804fcd9e82d24a4ee5d4fbc581b8f5de1e1f08056f80b4bef60a2d"

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
