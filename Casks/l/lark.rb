cask "lark" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.9.9,c31ef424"
    sha256 "058c2d9ae72cc8a0c7b56aad481e7efae48c5d6594f94b91d6affc914b20a310"
  end
  on_intel do
    version "7.9.9,b35d58c6"
    sha256 "2404d6fc5a96b4125621bc70f76b455a7665e31fe7e75607ba0c574b194b680f"
  end

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.csv.second}/Lark-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    regex(%r{/lark-artifact-storage/(\h+)/Lark-darwin_#{arch}[._-]v?(\d+(?:\.\d+)+)-signed\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true

  app "LarkSuite.app"

  zap trash: [
    # feishu
    "~/Library/Caches/com.bytedance.lark.helper",
    # both
    "~/Library/Caches/com.electron.lark",
    # lark
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
