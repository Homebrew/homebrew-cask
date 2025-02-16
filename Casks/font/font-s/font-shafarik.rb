cask "font-shafarik" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shafarik/Shafarik-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shafarik"
  homepage "https://fonts.google.com/specimen/Shafarik"

  font "Shafarik-Regular.ttf"

  # No zap stanza required
end
