cask "font-shafarik" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shafarik/Shafarik-Regular.ttf"
  name "Shafarik"
  homepage "https://github.com/slavonic/shafarik"

  font "Shafarik-Regular.ttf"

  # No zap stanza required
end
