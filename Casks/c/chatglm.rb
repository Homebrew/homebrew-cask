cask "chatglm" do
  version "2.0.9"
  sha256 "9cd4ab2bf1b3e541c8fc303679f46137cddc1888812f64d037a136d48af373d3"

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
