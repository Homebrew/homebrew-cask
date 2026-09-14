cask "font-neonderthaw" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/neonderthaw/Neonderthaw-Regular.ttf"
  name "Neonderthaw"
  homepage "https://fonts.google.com/specimen/Neonderthaw"

  font "Neonderthaw-Regular.ttf"

  # No zap stanza required
end
