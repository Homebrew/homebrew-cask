cask "hex-fiend" do
  version "2.17.1"
  sha256 "4291a6a710e9752fac26db0db69d1548077d5895da6622931f8c83b032bc1529"

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
  depends_on macos: ">= :mojave"

  app "Hex Fiend.app"
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ridiculousfish.hexfiend.sfl*",
    "~/Library/Application Support/com.ridiculousfish.HexFiend",
    "~/Library/Caches/com.ridiculousfish.HexFiend",
    "~/Library/Cookies/com.ridiculousfish.HexFiend.binarycookies",
    "~/Library/Preferences/com.ridiculousfish.HexFiend.plist",
    "~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState",
  ]
end
