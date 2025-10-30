cask "tropy" do
  arch arm: "-arm64"

  version "1.17.1"
  sha256 arm:   "a618c3f6d684ba26787a9599ceb2864b85bc962d80b26082b85ed6f4e201b0ca",
         intel: "0216b06f4f7afedacad4675f268524195a3dbf0cec8dca9cbf392bda54ddbb66"

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
