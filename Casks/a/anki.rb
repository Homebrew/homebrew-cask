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
    version "25.02.5"
    sha256 arm:   "46a7061d7376f460c61ae15bad00819a3ddc72dce845067cb2f47984c60f871b",
           intel: "3c396efa814a587ada3dd4ee18309490ed1b84fb6435589ba35d41d50902202c"

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
