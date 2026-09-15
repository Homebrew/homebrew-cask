cask "font-margarine" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/margarine/Margarine-Regular.ttf"
  name "Margarine"
  homepage "https://fonts.google.com/specimen/Margarine"

  font "Margarine-Regular.ttf"

  # No zap stanza required
end
