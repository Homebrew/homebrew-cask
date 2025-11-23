cask "font-bhutuka-expanded-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bhutukaexpandedone/BhuTukaExpandedOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BhuTuka Expanded One"
  homepage "https://fonts.google.com/specimen/BhuTuka+Expanded+One"

  font "BhuTukaExpandedOne-Regular.ttf"

  # No zap stanza required
end
