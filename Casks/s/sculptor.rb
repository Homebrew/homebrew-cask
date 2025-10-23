cask "sculptor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.22"
  sha256 arm:   "2e44e7eb4b2023e8abf933af68d00ef31de1fef26ca2ecea62700cec5ccb4b6f",
         intel: "92db7b4762b2d5dd64ce318e012ec9234c3a64baa5350a3226ad6dcad3f99366"

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
