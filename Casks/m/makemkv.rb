cask "makemkv" do
  version "1.18.4"
  sha256 "b77de54fffe4bd8dfdb498bed15a44cf4ca2002c3f86e9184faf8407b2486166"

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name "MakeMKV"
  desc "Video format converter (transcoder)"
  homepage "https://www.makemkv.com/"

  livecheck do
    url "https://www.makemkv.com/download/"
    regex(%r{href=.*?/makemkv[._-]v?(\d+(?:\.\d+)+)[._-]osx\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

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
