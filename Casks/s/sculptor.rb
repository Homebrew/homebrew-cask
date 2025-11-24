cask "sculptor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.32"
  sha256 arm:   "63d54fdd67b652f4e028583733e2e04dcce13aeb3b576b8e8d6f32317772009e",
         intel: "3a7f1558a19a41730bc6210aec9cd9d6a8af99dc3933031454959e739c2e6de4"

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
