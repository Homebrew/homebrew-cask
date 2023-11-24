cask "hex-fiend" do
  version "2.17.0"
  sha256 "e3c7b3591dd50480907b16dae20ca57576f3e2f734fb8c1fc422be0f8c83f962"

  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor_patch.chomp(".0")}.dmg",
      verified: "github.com/ridiculousfish/HexFiend/"
  name "Hex Fiend"
  desc "Hex editor focussing on speed"
  homepage "https://ridiculousfish.com/hexfiend/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

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
