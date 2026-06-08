cask "font-assistant" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/assistant/Assistant%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Assistant"
  homepage "https://fonts.google.com/specimen/Assistant"

  font "Assistant[wght].ttf"

  # No zap stanza required
end
