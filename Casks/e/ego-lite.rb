cask "ego-lite" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4.15"
  sha256 :no_check

  url "https://cdn.ego.app/channel/egobrowser_npx_referral/setup/macos/#{arch}/egolite.dmg"
  name "ego lite"
  desc "Browser for AI agents to run web automation"
  homepage "https://lite.ego.app/"

  livecheck do
    url "https://update.citrolabs.ai/service/update2", post_json: {
      request: {
        protocol:     "4.0",
        acceptformat: "crx3,download,puff,run,xz,zucc",
        arch:         arch,
        os:           {
          platform: "Mac OS X",
          version:  "26.5.0",
          arch:     arch,
        },
        apps:         [
          {
            appid:       "com.citrolabs.ego.lite",
            version:     "0.0.0.0",
            ap:          "lite",
            updatecheck: {},
          },
        ],
      },
    }
    regex(/"nextversion":"(\d+(?:\.\d+)+)"/i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "ego lite.app"

  uninstall quit: "com.citrolabs.ego.lite"

  zap trash: [
    "~/Library/Application Support/Citro Labs/ego lite",
    "~/Library/Application Support/Citro/ego lite",
    "~/Library/Caches/Citro Labs/ego lite",
    "~/Library/Caches/Citro/ego lite",
    "~/Library/Caches/com.citrolabs.ego.lite",
    "~/Library/HTTPStorages/com.citrolabs.ego.lite",
    "~/Library/Preferences/com.citrolabs.ego.lite.plist",
    "~/Library/Saved Application State/com.citrolabs.ego.lite.savedState",
    "~/Library/WebKit/com.citrolabs.ego.lite",
  ]
end
