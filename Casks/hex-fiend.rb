cask "hex-fiend" do
  version "2.16.0"
  sha256 "8cee7b6d6e53cae4349a328ab12c03a062e9d9367577e9b5e7d7e5546695acb7"

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
