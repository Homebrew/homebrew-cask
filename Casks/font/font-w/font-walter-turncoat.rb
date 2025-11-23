cask "font-walter-turncoat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/walterturncoat/WalterTurncoat-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Walter Turncoat"
  homepage "https://fonts.google.com/specimen/Walter+Turncoat"

  font "WalterTurncoat-Regular.ttf"

  # No zap stanza required
end
