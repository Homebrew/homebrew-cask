cask "huggingchat" do
  version "0.6.0"
  sha256 "14a264b02595bd2560d947091e92cea3b496a9e003db36059c1431efcf1b4fac"

  url "https://github.com/huggingface/chat-macOS/releases/download/v#{version}/HuggingChat.zip"
  name "huggingchat"
  desc "Chat client for models on HuggingFace"
  homepage "https://github.com/huggingface/chat-macOS"

  depends_on macos: ">= :sonoma"

  app "HuggingChat.app"

  zap trash: [
    "~/Library/Application Scripts/cyrilzakka.HuggingChat-Mac",
    "~/Library/Containers/cyrilzakka.HuggingChat-Mac",
  ]
end
