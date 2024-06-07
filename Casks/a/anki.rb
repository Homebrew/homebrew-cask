cask "anki" do
  arch arm: "apple", intel: "intel"

  version "24.06"

  on_catalina :or_older do
    sha256 "bc89cee6078972d1fba7006ef6f3177956c1d4d93f37906466ae7611a1dfcbbd"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "1019610acca4108734686fbc7aaad272fdba84daf09a05596024895d107e52ec",
           intel: "76009945a02b9170019e2417ee86e8ddce30e00dab037a97c7dca7b6622975a4"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
        verified: "github.com/ankitects/anki/"
  end

  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
