cask "autoclaw" do
  version "0.2.14"
  sha256 "d0a5b50a636d4cd4136a3449b7f5990bc9b0d4b223e8fef15727a5ce1d1dbde6"

  url "file://#{Dir.home}/autoclaw-#{version}.dmg"
  name "AutoClaw"
  desc "Desktop app for AutoClaw"
  homepage "https://github.com/Freakwill/homebrew-cask"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "AutoClaw.app"

  zap trash: [
    "~/Library/Application Support/AutoClaw",
    "~/Library/Logs/AutoClaw",
    "~/Library/Preferences/com.zhipuai.autoclaw.plist",
  ]
end
