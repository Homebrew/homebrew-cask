cask "hex-fiend" do
  version "2.13.1"
  sha256 "8434067ac0c41d68346e8abea807bff0cc3eba61619ef39ad8f437407848cf98"

  # github.com/ridiculousfish/HexFiend/ was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version}.dmg"
  appcast "https://github.com/ridiculousfish/HexFiend/releases.atom"
  name "Hex Fiend"
  desc "Hex editor focussing on speed"
  homepage "https://ridiculousfish.com/hexfiend/"

  auto_updates true
  conflicts_with cask: "hex-fiend-beta"

  app "Hex Fiend.app"
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ridiculousfish.hexfiend.sfl2",
    "~/Library/Application Support/com.ridiculousfish.HexFiend",
    "~/Library/Caches/com.ridiculousfish.HexFiend",
    "~/Library/Cookies/com.ridiculousfish.HexFiend.binarycookies",
    "~/Library/Preferences/com.ridiculousfish.HexFiend.plist",
    "~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState",
  ]
end
