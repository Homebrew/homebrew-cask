cask "anki" do
  arch arm: "apple", intel: "intel"

  version "23.12.1"

  on_catalina :or_older do
    sha256 "c74c1c660e45f29fbd7b939de3cec6a8cbff2ea143ba3e27b0a807a48290ff37"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "6dd682a928e37bceb0995288159ab3b8568467b49642bec2012fc79b50a938c8",
           intel: "cf8f11101d78a7badbe74b72f6eff6eb0c74b18e1065be298fac0e5ec48109d8"

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
