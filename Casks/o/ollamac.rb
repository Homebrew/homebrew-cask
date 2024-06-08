cask "ollamac" do
  version "2.0.0"
  sha256 "615f52db607f16c5c9501bbadb3da80ce5e39c8aa32696912fc37bcb9c9fcb9f"

  url "https://github.com/kevinhermawan/Ollamac/releases/download/v#{version}/Ollamac-#{version}.dmg"
  name "Ollamac"
  desc "Interact with Ollama models"
  homepage "https://github.com/kevinhermawan/Ollamac"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Ollamac.app"

  zap trash: [
    "~/Library/Application Scripts/com.kevinhermawa.Ollamac",
    "~/Library/Containers/com.kevinhermawan.Ollamac",
  ]
end
