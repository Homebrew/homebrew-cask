cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "3.0.15"
  sha256 arm:   "77d01df1e49310f5dfb6958a9ed7e9e7f82ddcc96731c056eeb7231ad574d056",
         intel: "3b62ad4a8f69feff85833a1379f201c41ca8b542d3576acf2e8a60d1ccc442ca"

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
  depends_on macos: :monterey

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
