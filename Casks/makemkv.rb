cask "makemkv" do
  version "1.15.4"
  sha256 "a8fc6bc4f249d6b0853f5a2a76aac897cf9bbd35784a177ac0d29ac669853adf"

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast "https://www.makemkv.com/download/"
  name "MakeMKV"
  desc "Video format converter (transcoder)"
  homepage "https://www.makemkv.com/"

  app "MakeMKV.app"
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/makemkvcon"

  zap trash: [
    "~/Library/Preferences/com.makemkv.MakeMKV.plist",
    "~/Library/Saved Application State/com.makemkv.MakeMKV.savedState",
  ]
end
