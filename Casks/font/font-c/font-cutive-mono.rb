cask "font-cutive-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cutivemono/CutiveMono-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cutive Mono"
  homepage "https://fonts.google.com/specimen/Cutive+Mono"

  font "CutiveMono-Regular.ttf"

  # No zap stanza required
end
