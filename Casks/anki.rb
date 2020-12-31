cask "anki" do
  version "2.1.38"
  sha256 "27c60faec25136b37ce01d7ac6be790cd6acd87a2cb948f6077e4128490034cf"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg",
      verified: "github.com/ankitects/anki/"
  appcast "https://github.com/ankitects/anki/releases.atom"
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
