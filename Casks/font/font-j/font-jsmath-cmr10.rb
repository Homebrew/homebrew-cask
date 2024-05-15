cask "font-jsmath-cmr10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/jsmathcmr10/jsMath-cmr10.ttf",
      verified: "github.com/google/fonts/"
  name "jsMath cmr10"
  homepage "https://fonts.google.com/specimen/jsMath+cmr10"

  font "jsMath-cmr10.ttf"

  # No zap stanza required
end
