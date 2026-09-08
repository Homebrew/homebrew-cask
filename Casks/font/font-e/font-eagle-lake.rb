cask "font-eagle-lake" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eaglelake/EagleLake-Regular.ttf"
  name "Eagle Lake"
  homepage "https://fonts.google.com/specimen/Eagle+Lake"

  font "EagleLake-Regular.ttf"

  # No zap stanza required
end
