cask "sculptor" do
  arch arm: "arm64", intel: "x64"

  version "0.2.28"
  sha256 arm:   "0b7ed5b6379ff0ffeab8e8fe749b316110eb6a554e8561e3abebc9b37d8e4132",
         intel: "52219b01e5cc0a89e3fad6ef5c4d72faa302d0b836dda0a6347fe7be8eeabf51"

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
