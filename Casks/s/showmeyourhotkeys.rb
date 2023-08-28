cask "showmeyourhotkeys" do
  version "1.8,21"
  sha256 "a977927258322e59e9682635faeec6ed86f20ed5f92506abc7387575309a84ed"

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
