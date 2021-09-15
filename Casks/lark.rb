cask "lark" do
  if Hardware::CPU.intel?
    version "4.5.6,f9ffce"
    sha256 "e239a9e6eb956a1040f64bca3855523302f19dd171630e8cc75bf4cb3bfae01a"

    url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-darwin_x64-#{version.before_comma}-signed.dmg",
        verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"

    livecheck do
      url "https://www.larksuite.com/api/downloads"
      strategy :page_match do |page|
        match = page.match(%r{/lark-artifact-storage/(\w+)/Lark-darwin_x64-(\d+(?:\.\d+)*)-signed\.dmg}i)
        "#{match[2]},#{match[1]}"
      end
    end
  else
    version "4.4.10,3eac8c"
    sha256 "29fb4f611a03f3ba54ae1e96a8503039515ac5af3ed5d05edad637acde4ab25b"

    url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.after_comma}/Lark-darwin_arm64-#{version.before_comma}-signed.dmg",
        verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"

    livecheck do
      url "https://www.larksuite.com/api/downloads"
      strategy :page_match do |page|
        match = page.match(%r{/lark-artifact-storage/(\w+)/Lark-darwin_arm64-(\d+(?:\.\d+)*)-signed\.dmg}i)
        "#{match[2]},#{match[1]}"
      end
    end
  end

  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

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
