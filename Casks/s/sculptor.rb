cask "sculptor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.30"
  sha256 arm:   "276614d490eec1decbe48245ec2164c49145da7537b143172fcba1858cef6b16",
         intel: "2b3c4730030849b740b58507d9be80a1473d4b123c0fda46cef91e2c81cdc47e"

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
