cask "font-cutive" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cutive/Cutive-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cutive"
  homepage "https://fonts.google.com/specimen/Cutive"

  font "Cutive-Regular.ttf"

  # No zap stanza required
end
