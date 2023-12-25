cask "anki" do
  arch arm: "apple", intel: "intel"

  version "23.12"

  on_catalina :or_older do
    sha256 "19ee19cc23b0b8f52822496e2f1e8bebba6df918df156635aec48d17750adc76"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "4bcfe84739cecd3e8645a83466e566daae1f750c24db36a8bb681ca223c2b877",
           intel: "568c2f302c7dbce3a668a62154f7b5a309d9c71614b764a8c2f6f67d85ba8e6f"

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
