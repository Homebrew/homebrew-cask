cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "123d857ad85e51ca8a68e4b50ff73d53342fbe041420aa53a0589882484be665",
         intel: "d4ca08fb8d003f9a5c5da9d7a60a136dd10cf5a2c4b0b4d14dbd6a6af2b333ac"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg",
      verified: "github.com/rize-io/lua/"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end
