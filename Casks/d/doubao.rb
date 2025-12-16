cask "doubao" do
  version "1.84.8"
  sha256 "3bd9aeb9a7c35de6f8d0e1d5d4cc26936ea4cb3ee8ecc609b935c4add4bd60ba"

  url "https://lf-flow-web-cdn.doubao.com/obj/flow-doubao/doubao_pc/#{version}/Doubao_universal_#{version}.dmg"
  name "doubao"
  desc "AI chat assistant"
  homepage "https://www.doubao.com/chat/"

  livecheck do
    url "https://www.doubao.com/service/settings/v3/?device_platform=web&brand=doubao&aid=582465"
    strategy :json do |json|
      json.dig("data", "settings", "saman_update_address", "version")
    end
  end

  depends_on macos: ">= :big_sur"

  app "doubao.app"

  zap trash: [
    "~/Library/Application Scripts/com.bot.pc.doubao.FinderSyncExtension",
    "~/Library/Application Support/Doubao",
    "~/Library/Caches/com.bot.pc.doubao",
    "~/Library/Caches/Doubao",
    "~/Library/Containers/com.bot.pc.doubao.FinderSyncExtension",
    "~/Library/HTTPStorages/com.bot.pc.doubao",
    "~/Library/Preferences/com.bot.pc.doubao.helper.plist",
    "~/Library/Preferences/com.bot.pc.doubao.plist",
  ]
end
