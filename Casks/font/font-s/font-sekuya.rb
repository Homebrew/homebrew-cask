cask "font-sekuya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sekuya/Sekuya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sekuya"
  homepage "https://fonts.google.com/specimen/Sekuya"

  font "Sekuya-Regular.ttf"

  # No zap stanza required
end
