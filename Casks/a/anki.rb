cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.66"

  on_catalina :or_older do
    sha256 "b7afd01d6f65ab5669215c3135c80c34f4aa7e1cc0e300c0092a132b651787f7"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "d31b474f4aeaed09c7aa12324a904ab4efa4300bbcf10e675a65af312c55b41a",
           intel: "70562ec3e65241de51c3ec7b7882840f357d532beec57de267c76b9ad40d67bf"

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

  conflicts_with cask: "anki-beta"
  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: "~/Library/Application Support/Anki*"
end
