cask "brackets" do
  version "1.14.2"
  sha256 "716be1a75099079aa1a22dedab403c9839155c4b99aab6677d8a24589f7f9a15"

  # github.com/adobe/brackets/ was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast "https://github.com/adobe/brackets/releases.atom"
  name "Brackets"
  desc "Open-source code editor for web-developement"
  homepage "http://brackets.io/"

  app "Brackets.app"

  zap trash: [
    "~/Library/Application Support/Brackets",
    "~/Library/Preferences/io.brackets.appshell.plist",
  ]
end
