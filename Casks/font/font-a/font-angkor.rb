cask "font-angkor" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/angkor/Angkor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Angkor"
  homepage "https://fonts.google.com/specimen/Angkor"

  font "Angkor-Regular.ttf"

  # No zap stanza required
end
