cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.5.4"
  sha256  arm:   "c78c975fd4b4ac2c32d43fb39b90298188171b312e0689140a204f4204f5f099",
          intel: "a0e8f96b81c7c7918bb054c966901403df7bb83775c93e58c6076925e551edf8"

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
