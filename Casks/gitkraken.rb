cask "gitkraken" do
  version "7.2.0"
  sha256 "95e2dd16c7d6b0c18e910f0c72116fe59ff9ef7b2ba4dedd494fa86d1dd53591"

  # release.axocdn.com/darwin/ was verified as official when first introduced to the cask
  url "https://release.gitkraken.com/darwin/installGitKraken.dmg"
  appcast "https://www.gitkraken.com/download"
  name "GitKraken"
  homepage "https://www.gitkraken.com/"

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
