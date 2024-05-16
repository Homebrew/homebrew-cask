cask "font-spicy-rice" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/spicyrice/SpicyRice-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Spicy Rice"
  homepage "https://fonts.google.com/specimen/Spicy+Rice"

  font "SpicyRice-Regular.ttf"

  # No zap stanza required
end
