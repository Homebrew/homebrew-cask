cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "2.3.4"
  sha256 arm:   "62b4fe4d207f05cea3acd46939c8b05f03467a33d12e421e76bdd575311a9d4c",
         intel: "179622bf35471afbe1388b5333e67ab0e85f9a2aba7df9d9b1bec04ca770b0c9"

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
  depends_on macos: ">= :monterey"

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
