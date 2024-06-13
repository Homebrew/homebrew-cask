cask "font-are-you-serious" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/areyouserious/AreYouSerious-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Are You Serious"
  homepage "https://fonts.google.com/specimen/Are+You+Serious"

  font "AreYouSerious-Regular.ttf"

  # No zap stanza required
end
