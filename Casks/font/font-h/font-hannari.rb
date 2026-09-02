cask "font-hannari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hannari/Hannari-Regular.ttf"
  name "Hannari"
  homepage "https://fonts.google.com/specimen/Hannari"

  font "Hannari-Regular.ttf"

  # No zap stanza required
end
