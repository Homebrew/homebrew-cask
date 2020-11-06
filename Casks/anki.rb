cask "anki" do
  version "2.1.35"
  sha256 "53f526243e44c2a4ecc44c2f79ab49a7c2a8bc008a15164038d8509da2974477"

  # github.com/ankitects/anki/ was verified as official when first introduced to the cask
  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg"
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
