cask "font-gidugu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gidugu/Gidugu-Regular.ttf"
  name "Gidugu"
  homepage "https://fonts.google.com/specimen/Gidugu"

  font "Gidugu-Regular.ttf"

  # No zap stanza required
end
