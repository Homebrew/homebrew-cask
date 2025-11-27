cask "tropy" do
  arch arm: "-arm64"

  version "1.17.2"
  sha256 arm:   "ba9e6b73a7bdc0570b4e66f4d328888971c5da3f8b50e66f1570288d2e789983",
         intel: "0d21d546037585690382c60ac5ecfe5e8a8fff9b8ebec4ae3bcd7f05b3226406"

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
