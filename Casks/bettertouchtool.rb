cask "bettertouchtool" do
  version "3.402-1633"
  sha256 "578f2e62805ae21e880c60e13ec455ec6057745edaff14214eb5c6eac5cf7705"

  # bettertouchtool.net/releases/ was verified as official when first introduced to the cask
  url "https://bettertouchtool.net/releases/btt#{version}.zip"
  appcast "https://www.corecode.io/macupdater/appcasts/bettertouchtool.txt"
  name "BetterTouchTool"
  homepage "https://folivora.ai/"

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
