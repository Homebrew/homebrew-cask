cask "llamachat" do
  version "1.2.0"
  sha256 "dd423584428f4e80a4c2bb093bde132fc25699902c0b496037b3a951abb3348d"

  url "https://github.com/alexrozanski/LlamaChat/releases/download/#{version}/LlamaChat.dmg",
      verified: "github.com/alexrozanski/LlamaChat/"
  name "LlamaChat"
  desc "Client for LLaMA models"
  homepage "https://llamachat.app/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "LlamaChat.app"

  zap trash: [
    "~/Library/Application Support/com.alexrozanski.LlamaChat",
    "~/Library/HTTPStorages/com.alexrozanski.LlamaChat",
    "~/Library/Preferences/com.alexrozanski.LlamaChat.plist",
  ]
end
