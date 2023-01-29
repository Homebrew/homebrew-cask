cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.57"
  sha256 arm:   "f202ed168a8956f87535f692a4d787f3e61e70c967f80ed4caa7925d6544b66a",
         intel: "36108c997b998fe225fe18596616e4ede2ec99b7e7a98952460c37df121bbfc3"

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
