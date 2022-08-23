cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.54"
  sha256 arm:   "44e229181dd6db5b6d5a3f9c4647f4ae92c5acee0b47af99c8646c6a5cf927e1",
         intel: "92eb39f59f4e7b8b1b025178b337a0ef9d619521144748a32b3e2b8df1c45a00"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
      verified: "github.com/ankitects/anki/"

  on_high_sierra :or_older do
    sha256 "edc44e5862384bb1c419033267c78167809253090c0302f07114c00c223db07a"

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
