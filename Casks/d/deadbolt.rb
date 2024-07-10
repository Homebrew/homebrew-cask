cask "deadbolt" do
  version "1.0.0"
  sha256 "df5b9b0988f168946809f1db17711f589f62bc211a6dad724eac9b0844285370"

  url "https://github.com/alichtman/deadbolt/releases/download/#{version}/Deadbolt-#{version}-mac.zip"
  name "Deadbolt"
  desc "File encryption tool"
  homepage "https://github.com/alichtman/deadbolt"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Deadbolt.app"

  zap trash: [
    "~/Library/Application Support/deadbolt",
    "~/Library/Preferences/org.alichtman.deadbolt.plist",
    "~/Library/Saved Application State/org.alichtman.deadbolt.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
