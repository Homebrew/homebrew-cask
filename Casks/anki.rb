cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.63"

  on_high_sierra :or_older do
    sha256 "9e9fe5ba51a3f6c43a568d15aaa4acb74992f013af17a0211b0447e0742588ec"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_mojave :or_newer do
    sha256 arm:   "193ae69bd2493e2551f8c15f17abb4b38c87a93033fe9da4b57e6538b8f68dc0",
           intel: "ae454f44564feefd9712a586ca9c348d3c3fd0205ed6edad405f4be6899c2284"

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
