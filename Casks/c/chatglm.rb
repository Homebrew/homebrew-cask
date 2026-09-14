cask "chatglm" do
  version "2.0.5"
  sha256 "3cff6a913b089c00d896d75b9906a8aa6abfa0b8e06e24289f20a0e64d0c1c17"

  url "https://sfile.chatglm.cn/apk/xinyu/windows/chatglm_#{version}_universal.dmg"
  name "ChatGLM"
  name "智谱清言"
  desc "Desktop client for the ChatGLM AI chatbot"
  homepage "https://chatglm.cn/"

  livecheck do
    url "https://sfile.chatglm.cn/apk/xinyu/windows/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "智谱清言.app"

  zap trash: [
    "~/Library/Application Support/chatglm",
    "~/Library/Logs/chatglm",
    "~/Library/Preferences/com.zhipu.chatglm.plist",
  ]
end
