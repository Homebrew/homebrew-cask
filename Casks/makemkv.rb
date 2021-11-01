cask "makemkv" do
  version "1.16.5"
  sha256 "f069248703fd05d6d2350048edffd61b7fa3bda491922b52d074742291c18638"

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
