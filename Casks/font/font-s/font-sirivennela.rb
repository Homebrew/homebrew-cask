cask "font-sirivennela" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sirivennela/Sirivennela-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sirivennela"
  homepage "https://fonts.google.com/specimen/Sirivennela"

  font "Sirivennela-Regular.ttf"

  # No zap stanza required
end
