cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "39fd9d8bb7d88723782b2cbc4ed01f19f1755dd4bdf0ba34b7afb4d244dbe7e0",
         intel: "ed1b3c970b996dd390230dc21b6ff2ff20cc4128771d43897f68ed563c48e9a2"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
