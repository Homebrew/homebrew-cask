cask "makemkv" do
  version "1.16.3"
  sha256 "a62b0b22a52622e8591bf936efc26fee41787fe618f062698870e775642c00d3"

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name "MakeMKV"
  desc "Video format converter (transcoder)"
  homepage "https://www.makemkv.com/"

  livecheck do
    url "https://www.makemkv.com/download/"
    strategy :page_match
    regex(%r{href=.*?/makemkv_v?(\d+(?:\.\d+)*)_osx\.dmg}i)
  end

  app "MakeMKV.app"
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/makemkvcon"

  zap trash: [
    "~/Library/Preferences/com.makemkv.MakeMKV.plist",
    "~/Library/Saved Application State/com.makemkv.MakeMKV.savedState",
  ]
end
