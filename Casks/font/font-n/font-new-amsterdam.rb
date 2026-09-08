cask "font-new-amsterdam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/newamsterdam/NewAmsterdam-Regular.ttf"
  name "New Amsterdam"
  homepage "https://fonts.google.com/specimen/New+Amsterdam"

  font "NewAmsterdam-Regular.ttf"

  # No zap stanza required
end
