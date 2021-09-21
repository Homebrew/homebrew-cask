cask "anki" do
  version "2.1.48"
  sha256 "1d7613a4ec45c63428aa3b3ed38762cb977e1a64baf5d14d11f2c8fc4e0d097c"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Anki.app"

  zap trash: [
    "~/Library/Application Support/Anki",
    "~/Library/Application Support/Anki2",
  ]
end
