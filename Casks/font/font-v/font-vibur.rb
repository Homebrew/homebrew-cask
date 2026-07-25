cask "font-vibur" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vibur/Vibur-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vibur"
  homepage "https://fonts.google.com/specimen/Vibur"

  font "Vibur-Regular.ttf"

  # No zap stanza required
end
