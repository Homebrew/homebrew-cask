cask "font-mr-dafoe" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrdafoe/MrDafoe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mr Dafoe"
  homepage "https://fonts.google.com/specimen/Mr+Dafoe"

  font "MrDafoe-Regular.ttf"

  # No zap stanza required
end
