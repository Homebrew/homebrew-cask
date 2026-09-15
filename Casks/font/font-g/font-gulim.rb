cask "font-gulim" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gulim/Gulim-Regular.ttf"
  name "Gulim"
  homepage "https://github.com/googlefonts/gulim"

  font "Gulim-Regular.ttf"

  # No zap stanza required
end
