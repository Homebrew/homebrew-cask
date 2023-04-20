cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.61"

  on_high_sierra :or_older do
    sha256 "9e9fe5ba51a3f6c43a568d15aaa4acb74992f013af17a0211b0447e0742588ec"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_mojave :or_newer do
    sha256 arm:   "959e07a15a9b228b93987931579d66348e4401f189777526346e4ba9e8aed32b",
           intel: "05cb541f2cb45357eb5d1819df2f1ca625869d39bc5d974bd35f118f385a2438"

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
