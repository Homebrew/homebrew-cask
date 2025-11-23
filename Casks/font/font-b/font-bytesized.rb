cask "font-bytesized" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bytesized/Bytesized-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bytesized"
  homepage "https://fonts.google.com/specimen/Bytesized"

  font "Bytesized-Regular.ttf"

  # No zap stanza required
end
