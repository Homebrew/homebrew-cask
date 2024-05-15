cask "font-cantora-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cantoraone/CantoraOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cantora One"
  homepage "https://fonts.google.com/specimen/Cantora+One"

  font "CantoraOne-Regular.ttf"

  # No zap stanza required
end
