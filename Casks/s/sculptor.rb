cask "sculptor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.29"
  sha256 arm:   "0bfa8fde4cbc6ee28b3a2103cea6f42d92d0c63bbf1cbbc61c14f1a6dbf09e29",
         intel: "7036b1f7581e5b6041126f0ab3e435f34236bcce30b3292e47f7caf7404a3aed"

  url "https://imbue-sculptor-releases.s3.us-west-2.amazonaws.com/sculptor/zip/darwin/#{arch}/Sculptor-darwin-#{arch}-#{version}.zip",
      verified: "imbue-sculptor-releases.s3.us-west-2.amazonaws.com/"
  name "Sculptor"
  desc "GUI for Claude Code"
  homepage "https://imbue.com/sculptor/"

  livecheck do
    url "https://imbue-sculptor-releases.s3.us-west-2.amazonaws.com/sculptor/zip/darwin/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Sculptor.app"

  zap trash: [
    "~/Library/Application Support/Sculptor",
    "~/Library/Caches/com.electron.sculptor",
    "~/Library/Caches/com.electron.sculptor.ShipIt",
    "~/Library/Preferences/com.electron.sculptor.plist",
    "~/Library/Saved Application State/com.electron.sculptor.savedState",
  ]
end
