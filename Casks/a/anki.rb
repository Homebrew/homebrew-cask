cask "anki" do
  arch arm: "apple", intel: "intel"

  version "24.04.1"

  on_catalina :or_older do
    sha256 "6ff3ca564e49a35c6c595c80dedc2b806b3cf02771f34c5f492b20a59ce144be"

    url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac-#{arch}-qt5.dmg",
        verified: "github.com/ankitects/anki/"
  end
  on_big_sur :or_newer do
    sha256 arm:   "94c51f22f5786e268e6f40014d972204fe7d5d8d4b9f7b64c29862da8691bb87",
           intel: "2e51db67c630d7b626d752f596a3226c0695f17581f2888c1464311353ef0292"

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
