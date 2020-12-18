cask "anki" do
  version "2.1.37"
  sha256 "302774643c935093da3bdb1fce055172c34d82ee29cb1211f0bb70cd97612ab8"

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
