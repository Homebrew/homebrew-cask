cask "gitkraken" do
  version "7.6.0"
  sha256 :no_check

  url "https://release.gitkraken.com/darwin/installGitKraken.dmg"
  name "GitKraken"
  desc "Git client focusing on productivity"
  homepage "https://www.gitkraken.com/"

  livecheck do
    url "https://www.gitkraken.com/download"
    strategy :page_match
    regex(/Latest\s*release:\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "GitKraken.app"

  zap trash: [
    "~/Library/Application Support/com.axosoft.gitkraken.ShipIt",
    "~/Library/Application Support/GitKraken",
    "~/Library/Caches/GitKraken",
    "~/Library/Caches/com.axosoft.gitkraken.ShipIt",
    "~/Library/Caches/com.axosoft.gitkraken",
    "~/Library/Cookies/com.axosoft.gitkraken.binarycookies",
    "~/Library/Preferences/com.axosoft.gitkraken.helper.plist",
    "~/Library/Preferences/com.axosoft.gitkraken.plist",
    "~/Library/Saved Application State/com.axosoft.gitkraken.savedState",
    "~/.gitkraken",
  ]
end
