cask "anki" do
  arch arm: "apple", intel: "intel"

  version "24.04"

  on_catalina :or_older do
    sha256 "24de21187d667d2831e4d09fe906e8c7ed97ed77d7d1db11f813a8abe7827966"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "6d1a4f54e5e90d1abe117c16d725a2020ce471d2e12e732b1e8fedf49833b61d",
           intel: "69bf1c73e40cb77649a75359980c33d95359c1640ad0304f2a7cf67c6982ec5b"

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
