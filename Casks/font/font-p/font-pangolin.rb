cask "font-pangolin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pangolin/Pangolin-Regular.ttf"
  name "Pangolin"
  homepage "https://fonts.google.com/specimen/Pangolin"

  font "Pangolin-Regular.ttf"

  # No zap stanza required
end
