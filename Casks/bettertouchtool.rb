cask "bettertouchtool" do
  version "3.401-1631"
  sha256 "8d82a39259e6db440387662f38e25acfae8c4df936f3837bf1851c742982ec79"

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
