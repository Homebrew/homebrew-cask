cask "font-montez" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/montez/Montez-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Montez"
  homepage "https://fonts.google.com/specimen/Montez"

  font "Montez-Regular.ttf"

  # No zap stanza required
end
