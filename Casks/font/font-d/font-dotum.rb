cask "font-dotum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dotum/Dotum-Regular.ttf"
  name "Dotum"
  homepage "https://github.com/googlefonts/gulim"

  font "Dotum-Regular.ttf"

  # No zap stanza required
end
