cask "font-joan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/joan/Joan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Joan"
  homepage "https://fonts.google.com/specimen/Joan"

  font "Joan-Regular.ttf"

  # No zap stanza required
end
