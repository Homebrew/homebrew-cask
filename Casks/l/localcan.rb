cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "e85645db8bcabc3dc746871e45106ca2f585180d5a38f1fa3b9e3fa026c2cfaf",
         intel: "5421711719745e1c131e0747051f1c2affeb44efcabb89614524b3976f405799"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
