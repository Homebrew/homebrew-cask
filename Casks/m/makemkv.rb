cask "makemkv" do
  version "1.17.5"
  sha256 "f41ba0659b14ef009ca4edf08e30ef352509cccce3631123f3906c10ca49a933"

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
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/mmccextr"
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/mmgplsrv"
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/sdftool"

  zap trash: [
    "~/Library/MakeMKV",
    "~/Library/Preferences/com.makemkv.MakeMKV.plist",
    "~/Library/Saved Application State/com.makemkv.MakeMKV.savedState",
    "~/Movies/.MakeMKV",
  ]
end
