cask "font-asimovian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/asimovian/Asimovian-Regular.ttf"
  name "Asimovian"
  homepage "https://fonts.google.com/specimen/Asimovian"

  font "Asimovian-Regular.ttf"

  # No zap stanza required
end
