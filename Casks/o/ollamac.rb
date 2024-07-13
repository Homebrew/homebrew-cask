cask "ollamac" do
  version "2.1.0"
  sha256 "55e29f10f5d805eed9c9da91679e30064a2d59fb0f6b10b84efc7d887ab53dba"

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
