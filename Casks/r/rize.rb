cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256  arm:   "ea2b14d8deae2bb0dc509c18d7558797dddff7812733b735fcdfc079250c91fc",
          intel: "a300bd29b82837e7237697e97835d77c97157737434faf8fee45572b9f493aad"

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
