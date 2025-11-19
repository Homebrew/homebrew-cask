cask "chatglm" do
  version "1.1.7"
  sha256 "af11fd807f05cb1fd4fdeeb52d4805248d3915308ec8a06fad8b565fc80f6c38"

  url "https://sfile.chatglm.cn/apk/xinyu/windows/chatglm_setup_darwin_universal_#{version}.dmg"
  name "ChatGLM"
  name "智谱清言"
  desc "Desktop client for the ChatGLM AI chatbot"
  homepage "https://chatglm.cn/"

  livecheck do
    url "https://sfile.chatglm.cn/apk/xinyu/windows/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "智谱清言.app"

  zap trash: [
    "~/Library/Application Support/chatglm",
    "~/Library/Logs/chatglm",
    "~/Library/Preferences/com.zhipu.chatglm.plist",
  ]
end
