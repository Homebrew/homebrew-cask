cask "font-hi-melody" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/himelody/HiMelody-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hi Melody"
  homepage "https://fonts.google.com/specimen/Hi+Melody"

  font "HiMelody-Regular.ttf"

  # No zap stanza required
end
