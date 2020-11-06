cask "makemkv" do
  version "1.15.3"
  sha256 "cce9311c109558acedc6d759666e1e18fc228fdcd6c98bb7323094a7ef271f6f"

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
