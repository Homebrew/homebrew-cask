cask "chatglm" do
  version "2.0.7"
  sha256 "1e502d121a7ca0c2796c0d651044a3143b7f84f4c38d0a0abc2c070f5429f836"

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
