cask "lark" do
  version "4.1.5,a2e80a"
  sha256 "d6555ce7a60106f0ebf95c51d750d1fa5571067f4a595cf4b9b61946d4996dc9"

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-darwin_x64-#{version.before_comma}-signed.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    strategy :page_match do |page|
      match = page.match(%r{/lark-artifact-storage/(\w+)/Lark-darwin_x64-(\d+(?:\.\d+)*)-signed\.dmg}i)
      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "Lark.app"

  zap trash: [
    # feishu
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    # lark
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    # both
    "~/Library/Caches/com.electron.lark",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
