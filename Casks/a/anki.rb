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
  on_big_sur do
    version "25.02.7"
    sha256 arm:   "b2df44bf951404e1d5d56150ee50e158ca5dfd77416b442ed02218348bf1a43b",
           intel: "0d7eb9781596e44c0a833df71c6948706b97c4e89e8bdb315707de33c33c6052"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt6.dmg",
        verified: "github.com/ankitects/anki/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "26.05"
    sha256 arm:   "7393597f4b96341ed74036010ed82bb4253e0390ae724d2b275c451bc858d127",
           intel: "2ff4d72a1d1c993a29eff44e03d602e1dc81cfd8801518695ee3516d1df0c189"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}.dmg",
        verified: "github.com/ankitects/anki/"

    livecheck do
      url :homepage
      regex(/href=.*?anki[._-]v?(\d+(?:\.\d+)+)(?:[._-]mac)?[._-]#{arch}\.dmg/i)
    end
  end

  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  depends_on :macos

  app "Anki.app"

  zap trash: [
    "~/Library/Application Support/Anki*",
    "~/Library/Caches/Anki",
    "~/Library/Saved Application State/net.ankiweb.dtop.savedState",
  ]
end
