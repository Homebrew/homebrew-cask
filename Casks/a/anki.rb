cask "anki" do
  arch arm: "apple", intel: "intel"

  version "24.06.1"

  on_catalina :or_older do
    sha256 "bc89cee6078972d1fba7006ef6f3177956c1d4d93f37906466ae7611a1dfcbbd"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "86df5bc8a9909d153262e3d7574976c361483f5c9732edc122bbf8c52f8d4b58",
           intel: "969549b05e239310c84e59e1d429e7081a126c182e5f2c8d8ab9fc34af0502ad"

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
