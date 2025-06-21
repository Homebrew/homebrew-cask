cask "font-special-gothic-expanded-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/specialgothicexpandedone/SpecialGothicExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Special Gothic Expanded One"
  homepage "https://fonts.google.com/specimen/Special+Gothic+Expanded+One"

  font "SpecialGothicExpandedOne-Regular.ttf"

  # No zap stanza required
end
