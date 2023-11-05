cask "showmeyourhotkeys" do
  version "1.9,22"
  sha256 "a046039265122a043938a90bfe26c46792f2db95bd3a2e53d9213d367fe5d7d9"

  url "https://showmeyourhotkeys.moxadventu.com/update/ShowMeYourHotKeys-prod-stable-#{version.csv.first}-(#{version.csv.second}).zip"
  name "ShowMeYourHotKeys"
  desc "Show applications menu items hotkeys"
  homepage "https://showmeyourhotkeys.moxadventu.com/"

  livecheck do
    url "https://showmeyourhotkeys.moxadventu.com/update/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "ShowMeYourHotKeys.app"

  zap trash: [
    "~/Library/Application Support/com.moxadventu.ShowMeYourHotKeys",
    "~/Library/Caches/com.moxadventu.ShowMeYourHotKeys",
    "~/Library/Preferences/com.moxadventu.ShowMeYourHotKeys.plist",
  ]
end
