cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "2.3.6"
  sha256 arm:   "d29a92a5405109ff2defe3cee25c0d5d5bcb94943d5d41753f1f1e3f29699e8c",
         intel: "adc163d6e12756315e28a6d514114b7346eac34281415376b4668ef6a4aa5d2e"

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
