cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.56"
  sha256 arm:   "75862028437acad6750881f6fa12bb1fbc6cdc848c6d9183bf7c3e21ef884a5c",
         intel: "c5df7ac06f9d1257fa9122778ed7707c3871248bf6affa3f245d91708c1a6648"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"

  on_high_sierra :or_older do
    sha256 "e2a2f0e2121acf6c98054d4365ac13290df6ce3486b1be13f4f93312202c57c0"

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
