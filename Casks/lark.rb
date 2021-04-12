cask "lark" do
  version "3.46.9,515418"
  sha256 "91295ab4dda05a82ff1f5ec8a78ff7253681586f74fbfa77a9812a6838623391"

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/lark-mac-#{version.before_comma}.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    strategy :page_match do |page|
      match = page.match(%r{lark-artifact-storage/(\w+)/lark-mac-(\d+(?:\.\d+)*)\.dmg}i)
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
