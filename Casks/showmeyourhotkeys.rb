cask "showmeyourhotkeys" do
  version "1.7,20"
  sha256 :no_check

  url "https://showmeyourhotkeys.moxadventu.com/app/ShowMeYourHotKeys.zip"
  name "showmeyourhotkeys"
  desc "Show applications menu items hotkeys"
  homepage "https://showmeyourhotkeys.moxadventu.com/"

  livecheck do
    url "https://showmeyourhotkeys.moxadventu.com/update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "ShowMeYourHotKeys.app"
end
