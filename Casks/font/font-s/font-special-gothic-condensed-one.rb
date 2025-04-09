cask "font-special-gothic-condensed-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/specialgothiccondensedone/SpecialGothicCondensedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Special Gothic Condensed One"
  homepage "https://fonts.google.com/specimen/Special+Gothic+Condensed+One"

  font "SpecialGothicCondensedOne-Regular.ttf"

  # No zap stanza required
end
