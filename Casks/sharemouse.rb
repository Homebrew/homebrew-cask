cask "sharemouse" do
  version "5.0.45"
  sha256 :no_check

  url "https://www.sharemouse.com/ShareMouseSetup.dmg"
  appcast "https://www.sharemouse.com/download/"
  name "ShareMouse"
  homepage "https://www.sharemouse.com/"

  app "ShareMouse.app"
end
