cask "font-lora" do
  version "3.008"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lora"
  name "Lora"
  homepage "https://fonts.google.com/specimen/Lora"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lora",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lora-Italic[wght].ttf"
  font "Lora[wght].ttf"

  # No zap stanza required
end
