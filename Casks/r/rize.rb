cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"
  sha256  arm:   "e2fda6ef3fba3190eb72e52cefee788107db1b682d1becef5c3d8836065b012c",
          intel: "ced900887e57f7b956efb2c6e194d7993c272be7a8710ee07bae637359e26997"

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
