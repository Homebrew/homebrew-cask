cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.4.4"
  sha256  arm:   "8b187bd570f5c704a40d07cd3f4e7a02de6bffd34f04d224130c147b31682198",
          intel: "d9524538d70d19395fd9928958db5a8dae9245ec1edbdab42597fca811ffe537"

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
