cask "font-vidaloka" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vidaloka/Vidaloka-Regular.ttf"
  name "Vidaloka"
  homepage "https://fonts.google.com/specimen/Vidaloka"

  font "Vidaloka-Regular.ttf"

  # No zap stanza required
end
