cask "font-bhutuka-expanded-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bhutukaexpandedone/BhuTukaExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BhuTuka Expanded One"
  desc "Gurmukhi companion to aoife mooney’s biorhyme expanded light typeface"
  homepage "https://fonts.google.com/specimen/BhuTuka+Expanded+One"

  font "BhuTukaExpandedOne-Regular.ttf"

  # No zap stanza required
end
