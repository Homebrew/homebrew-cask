cask "anki" do
  arch arm: "apple", intel: "intel"

  version "24.06.2"

  on_catalina :or_older do
    sha256 "29cc9ec8d19f2fcaf68f6023c4dd9349fcc11de0a89f8328ed5bf5f095c0d5c6"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "fd256dcafb0f5afe441a23536df1db3ed82e2e2fe8372b4ed7a24f9c3ec86823",
           intel: "b598d1e5e6f36e6f70e66eba436732f0e7b556da86103a4b7e3a606d4874ecba"

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
