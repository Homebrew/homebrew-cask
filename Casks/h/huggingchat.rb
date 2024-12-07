cask "huggingchat" do
  version "0.7.0"
  sha256 "6a9601d793f25dc62fe6cec9314a7a99d51106937d283c90fabd45e29f1d83e4"

  url "https://github.com/huggingface/chat-macOS/releases/download/v#{version}/HuggingChat.zip"
  name "huggingchat"
  desc "Chat client for models on HuggingFace"
  homepage "https://github.com/huggingface/chat-macOS"

  depends_on macos: ">= :sonoma"

  app "HuggingChat/HuggingChat.app"

  zap trash: [
    "~/Library/Application Scripts/cyrilzakka.HuggingChat-Mac",
    "~/Library/Containers/cyrilzakka.HuggingChat-Mac",
  ]
end
