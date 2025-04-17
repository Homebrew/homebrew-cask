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
    version "25.02.1"
    sha256 arm:   "f9a29231d69afacfa4a3bcc8fdafbc3e42a4073198a7750522d2052dedc65f7e",
           intel: "5178c46594cc1c00f43e02038d1692cbe915986389be2c4272bee4a591a74f21"

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
