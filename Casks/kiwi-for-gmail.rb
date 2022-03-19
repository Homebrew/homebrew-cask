cask "kiwi-for-gmail" do
  version "3.4.2,2411"
  sha256 :no_check

  url "https://downloads.kiwiforgmail.com/kiwi/release/consumer/Kiwi+for+Gmail+Setup.dmg"
  name "Kiwi for Gmail"
  desc "Enhances Gmail like a full-featured desktop office productivity app"
  homepage "https://www.kiwiforgmail.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :yosemite"

  app "Kiwi for Gmail.app"

  zap trash: [
    "~/Library/Application Scripts/com.zive.kiwi",
    "~/Library/Application Scripts/com.zive.kiwi.loginhelper",
    "~/Library/Application Scripts/com.zive.kiwi.share",
    "~/Library/Application Support/Kiwi for Gmail",
    "~/Library/Containers/com.zive.kiwi",
    "~/Library/Containers/com.zive.kiwi.loginhelper",
    "~/Library/Containers/com.zive.kiwi.share",
    "~/Library/Group Containers/ND86S98S6P.com.zive.kiwi",
    "~/Library/Preferences/com.zive.kiwi.plist",
    "~/Library/Saved Application State/com.zive.kiwi.savedState",
  ]
end
