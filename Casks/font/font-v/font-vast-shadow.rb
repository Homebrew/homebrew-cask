cask "font-vast-shadow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vastshadow/VastShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vast Shadow"
  homepage "https://fonts.google.com/specimen/Vast+Shadow"

  font "VastShadow-Regular.ttf"

  # No zap stanza required
end
