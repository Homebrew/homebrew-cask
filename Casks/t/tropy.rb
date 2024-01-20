cask "tropy" do
  arch arm: "-arm64"

  version "1.15.2"
  sha256 arm:   "73587dcbdb4bd62a7c3ae52bbbf701ca3a341d630f8bfcaa631f2fca76c71678",
         intel: "14bc1b69c4dd0068db5471ac1b4a0b0ccf242db3551c4e72b22e3053e7cfa645"

  url "https://github.com/tropy/tropy/releases/download/v#{version}/tropy-#{version}#{arch}.dmg",
      verified: "github.com/tropy/tropy/"
  name "Tropy"
  desc "Research photo management"
  homepage "https://tropy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tropy.app"

  zap trash: [
    "~/Library/Application Support/Tropy",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Caches/Tropy",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
