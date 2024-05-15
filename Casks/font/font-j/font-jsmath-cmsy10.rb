cask "font-jsmath-cmsy10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/jsmathcmsy10/jsMath-cmsy10.ttf",
      verified: "github.com/google/fonts/"
  name "jsMath cmsy10"
  homepage "https://fonts.google.com/specimen/jsMath+cmsy10"

  font "jsMath-cmsy10.ttf"

  # No zap stanza required
end
