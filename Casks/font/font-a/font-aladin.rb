cask "font-aladin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aladin/Aladin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aladin"
  homepage "https://fonts.google.com/specimen/Aladin"

  font "Aladin-Regular.ttf"

  # No zap stanza required
end
