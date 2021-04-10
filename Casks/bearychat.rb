cask "bearychat" do
  version "2018.11.06"
  sha256 :no_check

  url "https://static.bearychat.com/v2/BearyChat.dmg"
  name "BearyChat"
  name "倍洽"
  homepage "https://bearychat.com/"

  livecheck do
    url "https://bearychat.com/releases/client/changelog.json"
    strategy :page_match do |page|
      JSON.parse(page)["body"]["releases"].first["version"]
    end
  end

  app "倍洽.app"

  zap trash: [
    "~/Preferences/com.node-webkit-builder.bearychat.plist",
    "~/Library/Application Support/BearyChat",
    "~/Library/Application Support/BearyChat_V2",
  ]
end
