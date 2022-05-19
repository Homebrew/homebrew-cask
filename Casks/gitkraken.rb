cask "gitkraken" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "8.5.0"

  if Hardware::CPU.intel?
    sha256 "2110193484ef4b368796143819c8e4b6d564410c3c24961535be131e8afacb3b"
  else
    sha256 "9c02dbe1838b6b10d1c8f7b41b5e6fe42bcbd3fb16a6bb9f4855d35e7e2f38ac"
  end

  url "https://release.axocdn.com/#{arch}/GitKraken-v#{version}.zip",
      verified: "release.axocdn.com/"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://support.gitkraken.com/release-notes/current/"
    regex(/Version\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "GitKraken.app"

  uninstall quit: "com.axosoft.gitkraken"

  zap trash: [
    "~/.gitkraken",
    "~/Library/Application Support/com.axosoft.gitkraken.ShipIt",
    "~/Library/Application Support/GitKraken",
    "~/Library/Caches/com.axosoft.gitkraken.ShipIt",
    "~/Library/Caches/com.axosoft.gitkraken",
    "~/Library/Caches/GitKraken",
    "~/Library/Cookies/com.axosoft.gitkraken.binarycookies",
    "~/Library/HTTPStorages/com.axosoft.gitkraken",
    "~/Library/Preferences/com.axosoft.gitkraken.helper.plist",
    "~/Library/Preferences/com.axosoft.gitkraken.plist",
    "~/Library/Saved Application State/com.axosoft.gitkraken.savedState",
  ]
end
