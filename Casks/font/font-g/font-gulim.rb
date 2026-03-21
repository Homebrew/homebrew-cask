cask "font-gulim" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gulim/Gulim-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gulim"
  homepage "https://fonts.google.com/specimen/Gulim"

  font "Gulim-Regular.ttf"

  # No zap stanza required
end
