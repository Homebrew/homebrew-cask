cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "b4e06a82ec56a22f12d87412cb9f56f0afdd55317d68a778466af1795fc9f4ee",
         intel: "128f82df539c56a6ac99e5e049d0acad690bfe1ad64110325909d318b2ac25ac"

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
