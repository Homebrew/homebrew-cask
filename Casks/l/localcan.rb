cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.3.6"
  sha256 intel: "c48d4613abe1527c53006a48a280b9adc2eb787f04dce3684ab1c3a3eb9e4038",
         arm:   "46743b5640de5c3f96b914f2f34b61c53442221fd74f790f93dfe1b2f79c4343"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
