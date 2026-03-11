cask "autoclaw" do
  version "0.2.14"
  sha256 "d0a5b50a636d4cd4136a3449b7f5990bc9b0d4b223e8fef15727a5ce1d1dbde6"

  url "https://autoglm.aminer.cn/autoclaw/updates/autoclaw-#{version}.dmg"
      verified: "autoglm.aminer.cn/autoclaw/updates/"
  name "AutoClaw"
  desc "Desktop app for AutoClaw"
  homepage "https://autoglm.zhipuai.cn/autoclaw/"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "AutoClaw.app"

  zap trash: [
    "~/Library/Application Support/AutoClaw",
    "~/Library/Logs/AutoClaw",
    "~/Library/Preferences/com.zhipuai.autoclaw.plist",
  ]
end
