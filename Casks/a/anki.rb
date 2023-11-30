cask "anki" do
  arch arm: "apple", intel: "intel"

  version "23.10.1"

  on_catalina :or_older do
    sha256 "19ee19cc23b0b8f52822496e2f1e8bebba6df918df156635aec48d17750adc76"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "8c49bd589057c7becaa6577306ec4ad4fbba5468804593e746632112365d9b52",
           intel: "31294ab04bf837f1fb1b56d438194f0577aba47216df63fa55ad36691ab5fb9e"

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
