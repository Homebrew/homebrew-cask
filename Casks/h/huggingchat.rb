cask "huggingchat" do
  version "0.7.0"
  sha256 "b421090d0e68230b7fc2dc086bb12b1e846acce0682af45edc26e66b4be15ce1"

  url "https://github.com/huggingface/chat-macOS/releases/download/v#{version}/HuggingChat.zip"
  name "huggingchat"
  desc "Chat client for models on HuggingFace"
  homepage "https://github.com/huggingface/chat-macOS"

  depends_on macos: ">= :sonoma"

  app "HuggingChat.app"

  zap trash: [
    "~/Library/Application Scripts/cyrilzakka.HuggingChat-Mac",
    "~/Library/Caches/cyrilzakka.HuggingChat-Mac",
    "~/Library/Containers/cyrilzakka.HuggingChat-Mac",
    "~/Library/HTTPStorages/cyrilzakka.HuggingChat-Mac",
    "~/Library/HTTPStorages/cyrilzakka.HuggingChat-Mac.binarycookies",
    "~/Library/Preferences/cyrilzakka.HuggingChat-Mac.plist",
  ]
end
