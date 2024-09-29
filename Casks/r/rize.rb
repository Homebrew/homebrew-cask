cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256  arm:   "83b53ad7820e379966953849139dd86f9963d03c0cd1670d82b09accdecc4608",
          intel: "80ab7d96590ec9cd7f9f0da220a05651ddf272c69bd21770755fdd64401648e0"

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
