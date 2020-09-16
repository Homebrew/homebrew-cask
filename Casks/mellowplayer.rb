cask "mellowplayer" do
  version "3.4.0"
  sha256 "0d7801211951de5ca3d3e8ce4c301bc2b3e29c18bdd90ec0a763f26b2bb1bafc"

  # github.com/ColinDuquesnoy/MellowPlayer/ was verified as official when first introduced to the cask
  url "https://github.com/ColinDuquesnoy/MellowPlayer/releases/download/#{version}/MellowPlayer.dmg"
  appcast "https://github.com/ColinDuquesnoy/MellowPlayer/releases.atom"
  name "MellowPlayer"
  desc "Moved to gitlab"
  homepage "https://colinduquesnoy.github.io/MellowPlayer/"

  app "MellowPlayer.app"

  zap trash: [
    "~/Library/Application Support/MellowPlayer",
    "~/Library/Caches/MellowPlayer",
    "~/Library/Preferences/com.mellowplayer.3.plist",
    "~/Library/Preferences/com.mellowplayer.mellowplayer.MellowPlayer.plist",
  ]
end
