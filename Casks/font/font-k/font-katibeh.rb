cask "font-katibeh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/katibeh/Katibeh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Katibeh"
  homepage "https://fonts.google.com/specimen/Katibeh"

  font "Katibeh-Regular.ttf"

  # No zap stanza required
end
