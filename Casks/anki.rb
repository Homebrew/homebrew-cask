cask "anki" do
  version "2.1.36"
  sha256 "35622e702bcbf658b633052091e9e00d0fb095881def1a007a2923586a8bd1c4"

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
