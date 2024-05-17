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
    strategy :json do |json|
      macos_version = json.dig("res", "macos_version")
      macos_latest_version = json.dig("res", "macos_latest_version")

      if macos_latest_version == macos_version
        macos_latest_version
      else
        "#{macos_latest_version},#{macos_version}"
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
