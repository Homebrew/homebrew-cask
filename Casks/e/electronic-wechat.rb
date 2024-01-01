cask "electronic-wechat" do
  version "2.0"
  sha256 "eba20a9164e917f1a9962fc3202d2c1255a3d26802ae2fd1fe229feaba5b6242"

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V#{version}/mac-osx.tar.gz"
  name "Electronic WeChat"
  desc "WeChat Client"
  homepage "https://github.com/geeeeeeeeek/electronic-wechat"

  # https://github.com/geeeeeeeeek/electronic-wechat/issues/693
  disable! date: "2024-01-01", because: :discontinued

  app "Electronic WeChat-darwin-x64/Electronic WeChat.app"

  zap trash: [
    "~/Library/Application Support/electronic-wechat",
    "~/Library/Application Support/electronic-wechat/Local Storage/https_web.wechat.com_0.localstorage",
    "~/Library/Application Support/electronic-wechat/Local Storage/https_web.wechat.com_0.localstorage-journal",
    "~/Library/Saved Application State/com.electron.electronic-wechat.savedState",
    "~/Library/Preferences/com.electron.electronic-wechat.plist",
    "~/Library/Preferences/com.electron.electronic-wechat.helper.plist",
  ]
end
