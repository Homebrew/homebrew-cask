cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.55"
  sha256 arm:   "de9a44f803cf509e87fee77aeca3707d02671426bb83b1ddc71e28643d22a7a1",
         intel: "f827a8d376cc3670d05a00e617530896b4d0c8768950a1bc805d7ff99105098c"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"

  on_high_sierra :or_older do
    sha256 "96c26b84e0045e295ee1d68e2b943f94f3feed0fc618f1cdbedb20ae00bc8a8f"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end

  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "anki-beta"
  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
