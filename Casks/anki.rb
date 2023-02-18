cask "anki" do
  arch arm: "apple", intel: "intel"

  version "2.1.58"
  sha256 arm:   "4ac83e4ae09805f690f9764fee19d90c3fe4e5d31db94e688fc1fe80ffa23cc6",
         intel: "669e42f6be6e01f220f2ccccb690b3595dcdec49bb89837b58b3ba0e212c9567"

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
