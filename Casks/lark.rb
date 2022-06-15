cask "lark" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "5.11.11,b514c3"
    sha256 "958be2f0026db38fc2607389fbf5ccde48311093656f6ffe3009edfdfc77f8b5"
  else
    version "5.11.11,b7417a"
    sha256 "cbfb082b329cd5947dbde17a4b27ea40e348bd32dd487f70fac936d48d3a17a1"
  end

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.csv.second}/Lark-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    strategy :page_match do |page|
      match = page.match(%r{/lark-artifact-storage/(\h+)/Lark-darwin_#{arch}[._-]v?(\d+(?:\.\d+)+)-signed\.dmg}i)
      next if match.blank?

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
