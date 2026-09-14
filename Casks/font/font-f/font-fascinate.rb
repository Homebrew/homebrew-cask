cask "font-fascinate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fascinate/Fascinate-Regular.ttf"
  name "Fascinate"
  homepage "https://fonts.google.com/specimen/Fascinate"

  font "Fascinate-Regular.ttf"

  # No zap stanza required
end
