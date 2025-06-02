cask "anki" do
  arch arm: "apple", intel: "intel"

  on_catalina :or_older do
    version "24.11"
    sha256 "4d44b763ea114e2aae61aaaa8171fd54a9095a06cd8e84a863675b1bbc75a24a"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "25.02.6"
    sha256 arm:   "15e5a025cfebe7901054956e0411c0599630965b2e06eb3acd94e10507b2a343",
           intel: "ab09d18e2c316993d3bf488f0b8c7a0428e4cb5350c42de7daf52f51ea20bf5d"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
        verified: "github.com/ankitects/anki/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: [
    "~/Library/Application Support/Anki*",
    "~/Library/Caches/Anki",
    "~/Library/Saved Application State/net.ankiweb.dtop.savedState",
  ]
end
