cask "makemkv" do
  version "1.16.7"
  sha256 "57083112fdbbe3b5ad4017133754907ca23bc6f794dd2d8a2e85171d09ae21fe"

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name "MakeMKV"
  desc "Video format converter (transcoder)"
  homepage "https://www.makemkv.com/"

  livecheck do
    url "https://www.makemkv.com/download/"
    regex(%r{href=.*?/makemkv[._-]v?(\d+(?:\.\d+)+)[._-]osx\.dmg}i)
  end

  app "MakeMKV.app"
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/makemkvcon"

  zap trash: [
    "~/Library/Preferences/com.makemkv.MakeMKV.plist",
    "~/Library/Saved Application State/com.makemkv.MakeMKV.savedState",
  ]
end
