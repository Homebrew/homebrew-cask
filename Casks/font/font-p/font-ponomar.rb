cask "font-ponomar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ponomar/Ponomar-Regular.ttf"
  name "Ponomar"
  homepage "https://github.com/slavonic/Ponomar"

  font "Ponomar-Regular.ttf"

  # No zap stanza required
end
