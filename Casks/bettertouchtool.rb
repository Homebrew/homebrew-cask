cask "bettertouchtool" do
  version "3.400-1629"
  sha256 "1adde58147712d82dc6c35936f23110b7fded4f3a754342ef09e0c22a850fdc0"

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
