cask "anki" do
  arch arm: "apple", intel: "intel"

  version "23.10"

  on_catalina :or_older do
    sha256 "b0b0da1440f2f96982bcf0fc1bc31f99f765e9635e52715e7e3cc14058ff0d39"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "22b296275ea0302476307f1d818502b4c8fa98340fd7cf8742bd7b85f7a43c8b",
           intel: "63c059ec403a0e7e3ee64302172b978b5ed70cb9fd611c6a5466aeb6df5650ea"

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
