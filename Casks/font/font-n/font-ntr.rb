cask "font-ntr" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ntr/NTR-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "NTR"
  homepage "https://fonts.google.com/specimen/NTR"

  font "NTR-Regular.ttf"

  # No zap stanza required
end
