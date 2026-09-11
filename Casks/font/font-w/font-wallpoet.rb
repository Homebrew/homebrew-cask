cask "font-wallpoet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wallpoet/Wallpoet-Regular.ttf"
  name "Wallpoet"
  homepage "https://fonts.google.com/specimen/Wallpoet"

  font "Wallpoet-Regular.ttf"

  # No zap stanza required
end
