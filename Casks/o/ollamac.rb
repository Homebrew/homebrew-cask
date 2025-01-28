cask "ollamac" do
  version "3.0.1"
  sha256 "8adce6354b3714d1e8954536b8782407b536c96846cc282d47debcfd3974719c"

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
