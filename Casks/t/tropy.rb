cask "tropy" do
  arch arm: "-arm64"

  version "1.15.1"
  sha256 arm:   "be06ee1af3de060c7219ba708d6c8425ceee9ca0112af677ee444c64572312cf",
         intel: "50cab879dd45aee288eec38aa3988444e019363c1fe6bdc440965150f07d0ab9"

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
    "~/Library/Caches/org.tropy.tropy.ShipIt",
    "~/Library/Caches/org.tropy.tropy",
    "~/Library/Caches/Tropy",
    "~/Library/Logs/Tropy",
    "~/Library/Preferences/org.tropy.tropy.plist",
    "~/Library/Saved Application State/org.tropy.tropy.savedState",
  ]
end
