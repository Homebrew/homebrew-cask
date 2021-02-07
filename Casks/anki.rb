cask "anki" do
  version "2.1.40"
  sha256 "711bdf543513ab526a36e3ece555820c5aa1d03f6f02c5498f789804d3d5c091"

  url "https://github.com/ankitects/anki/releases/download/#{version}/anki-#{version}-mac.dmg",
      verified: "github.com/ankitects/anki/"
  name "Anki"
  desc "Memory training application"
  homepage "https://apps.ankiweb.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Anki.app"

  zap trash: [
    "~/Library/Application Support/Anki",
    "~/Library/Application Support/Anki2",
  ]
end
