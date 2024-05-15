cask "font-quando" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/quando/Quando-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Quando"
  homepage "https://fonts.google.com/specimen/Quando"

  font "Quando-Regular.ttf"

  # No zap stanza required
end
