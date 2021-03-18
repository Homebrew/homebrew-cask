cask "makemkv" do
  version "1.16.2"
  sha256 "4b327279f178cc46a2bc4d94a8739f421d538cb768a81f2ed0cb4550dfe31ebb"

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
