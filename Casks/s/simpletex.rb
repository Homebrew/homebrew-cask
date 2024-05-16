cask "simpletex" do
  arch arm: "-arm64"

  version "0.2.6,0.2.5"
  sha256 arm:   "70402676f668ffb0f7b08b06062d0216241f61f6126ab10774fc2f44b20db7bc",
         intel: "a8b37d4e880f2340296f21d5debab47ad0c062c2839ef7ef22f7a5e9e1d7551c"

  url "https://gitee.com/simpletex/simple-tex-download/releases/download/v#{version.csv.second || version.csv.first}/SimpleTex-#{version.csv.first}#{arch}.dmg",
      verified: "gitee.com/simpletex/simple-tex-download/releases/download/"
  name "SimpleTex"
  desc "Formula snipping and recognition app"
  homepage "https://simpletex.net/"

  livecheck do
    url "https://server.simpletex.cn/misc/check/force_update_version/"
    regex(/"macos_version":\s"(\d+(?:\.\d+)+)",\s"macos_latest_version":\s"(\d+(?:\.\d+)+)"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        if match[1] == match[0]
          match[0]
        else
          "#{match[1]},#{match[0]}"
        end
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "SimpleTex.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.spt.simpletex.sfl*",
    "~/Library/Application Support/SimpleTex",
    "~/Library/Preferences/com.spt.SimpleTex.plist",
    "~/Library/Saved Application State/com.spt.SimpleTex.savedState",
  ]
end
