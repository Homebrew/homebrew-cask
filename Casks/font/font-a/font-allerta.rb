cask "font-allerta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allerta/Allerta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allerta"
  homepage "https://fonts.google.com/specimen/Allerta"

  font "Allerta-Regular.ttf"

  # No zap stanza required
end
