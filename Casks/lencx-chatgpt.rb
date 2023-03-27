cask "lencx-chatgpt" do
  arch arm:   "aarch64",
       intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "c4c10eeb4a2c9a885da13047340372f461d411711c20472fc673fbf958bf6378",
         intel: "d7f32d11f86ad8ac073dd451452124324e1c9154c318f15b77b5cd254000a3c4"

  url "https://github.com/lencx/ChatGPT/releases/download/v#{version}/ChatGPT_#{version}_macos_#{arch}.dmg"
  name "ChatGPT"
  desc "Desktop wrapper for OpenAI ChatGPT"
  homepage "https://github.com/lencx/ChatGPT#readme"

  app "ChatGPT.app"

  zap trash: [
    "~/.chatgpt",
    "~/Library/Caches/com.lencx.chatgpt",
    "~/Library/HTTPStorages/com.lencx.chatgpt.binarycookies",
    "~/Library/Preferences/com.lencx.chatgpt.plist",
    "~/Library/Saved Application State/com.lencx.chatgpt.savedState",
    "~/Library/WebKit/com.lencx.chatgpt",
  ]
end
