cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.64"

  on_high_sierra :or_older do
    sha256 "9e9fe5ba51a3f6c43a568d15aaa4acb74992f013af17a0211b0447e0742588ec"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_mojave :or_newer do
    sha256 arm:   "489591008d578bdda921c394696f1ce2c2c00094d45ad78be28a979bae8e5afb",
           intel: "e6fbdee9e887fce942a9ad8720d41fbb09860e98dcd6e8a254949cea2179ae5a"

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
