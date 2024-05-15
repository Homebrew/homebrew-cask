cask "font-zeyada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zeyada/Zeyada.ttf",
      verified: "github.com/google/fonts/"
  name "Zeyada"
  homepage "https://fonts.google.com/specimen/Zeyada"

  font "Zeyada.ttf"

  # No zap stanza required
end
