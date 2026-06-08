cask "font-itim" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/itim/Itim-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Itim"
  homepage "https://fonts.google.com/specimen/Itim"

  font "Itim-Regular.ttf"

  # No zap stanza required
end
