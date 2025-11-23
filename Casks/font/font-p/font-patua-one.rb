cask "font-patua-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/patuaone/PatuaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Patua One"
  homepage "https://fonts.google.com/specimen/Patua+One"

  font "PatuaOne-Regular.ttf"

  # No zap stanza required
end
