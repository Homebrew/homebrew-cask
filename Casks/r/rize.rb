cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.5.5"
  sha256 arm:   "479ec2dda5ab87f4ae2189d2d9829bc9e4fff185d92cd04cd1b2f63b51497127",
         intel: "e0afbb2ad8acc2309a1b10569dc0d9bf2bc408f34d6857f719850e819e85b4a5"

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
