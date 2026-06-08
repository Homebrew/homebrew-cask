cask "font-solitreo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/solitreo/Solitreo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Solitreo"
  homepage "https://fonts.google.com/specimen/Solitreo"

  font "Solitreo-Regular.ttf"

  # No zap stanza required
end
