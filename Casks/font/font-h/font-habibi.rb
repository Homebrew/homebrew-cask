cask "font-habibi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/habibi/Habibi-Regular.ttf"
  name "Habibi"
  homepage "https://fonts.google.com/specimen/Habibi"

  font "Habibi-Regular.ttf"

  # No zap stanza required
end
