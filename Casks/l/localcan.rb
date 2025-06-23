cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "aea2bc28b37b54618bd5aa7b81bba9cf8b18f7280a47ab73a1a51c697ff2386e",
         intel: "bcd354bc06d1026a1d7a434cd8d704be9f4c09c782043d9ab3bb2f5f9a3c8512"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
