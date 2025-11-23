cask "font-moulpali" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moulpali/Moulpali-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moulpali"
  homepage "https://fonts.google.com/specimen/Moulpali"

  font "Moulpali-Regular.ttf"

  # No zap stanza required
end
