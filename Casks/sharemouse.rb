cask "sharemouse" do
  version "5.0.48"
  sha256 :no_check

  url "https://www.sharemouse.com/ShareMouseSetup.dmg"
  name "ShareMouse"
  desc "Share peripherals between computers"
  homepage "https://www.sharemouse.com/"

  livecheck do
    url "https://www.sharemouse.com/download/"
    strategy :page_match
    regex(/Mac\s*Version:.*?(\d+(?:\.\d+)*)/i)
  end

  app "ShareMouse.app"

  zap trash: [
    "/Users/Shared/ShareMouse",
    "~/Library/Caches/com.bartelsmedia.ShareMouse",
    "~/Library/Preferences/com.bartelsmedia.ShareMouse.plist",
  ]
end
