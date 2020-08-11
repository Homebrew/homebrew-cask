cask "gitkraken" do
  version "7.3.0"
  sha256 "e4af0d4dd4ab9a9da33fb99c3f657b7299043df1c03eecad56370b607fd85853"

  # release.axocdn.com/darwin/ was verified as official when first introduced to the cask
  url "https://release.gitkraken.com/darwin/installGitKraken.dmg"
  appcast "https://www.gitkraken.com/download"
  name "GitKraken"
  desc "Git client focusing on productivity"
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
