cask "ollamac" do
  version "2.1.1"
  sha256 "1d909be010a28ea0c30508783836c9dc213caa29a2154825a184d9ed72c950f4"

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
