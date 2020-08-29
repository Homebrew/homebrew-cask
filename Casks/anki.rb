cask "anki" do
  version "2.1.32"
  sha256 "1e3a87bb69fef7df157a56593820b86e390ca5d789f4cf87f37ca08f3a78bf9b"

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
