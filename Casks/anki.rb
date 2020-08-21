cask "anki" do
  version "2.1.30"
  sha256 "906774a4a7f93d94b06908b5c0053c16cbccdfb73d5420da174ca398a885010c"

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
