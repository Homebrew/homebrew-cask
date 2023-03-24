cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.60"
  sha256 arm:   "cbaee7c65b32293d4fb81abc28c87c35ab692d588295a37a04830ca2b6a529d4",
         intel: "0d066c2a427c48c005a59dbf6954408a099bb1d9d6efd8d6ee8b4f39df18feff"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"

  on_high_sierra :or_older do
    sha256 "9e9fe5ba51a3f6c43a568d15aaa4acb74992f013af17a0211b0447e0742588ec"

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
