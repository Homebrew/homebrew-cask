cask "sharemouse" do
  version "5.0.47"
  sha256 :no_check

  url "https://www.sharemouse.com/ShareMouseSetup.dmg"
  appcast "https://www.sharemouse.com/download/"
  name "ShareMouse"
  desc "Share peripherals between computers"
  homepage "https://www.sharemouse.com/"

  app "ShareMouse.app"

  zap trash: [
    "/Users/Shared/ShareMouse",
    "~/Library/Caches/com.bartelsmedia.ShareMouse",
    "~/Library/Preferences/com.bartelsmedia.ShareMouse.plist",
  ]
end
