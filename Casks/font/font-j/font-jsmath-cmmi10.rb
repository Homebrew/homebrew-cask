cask "font-jsmath-cmmi10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/jsmathcmmi10/jsMath-cmmi10.ttf",
      verified: "github.com/google/fonts/"
  name "jsMath cmmi10"
  homepage "https://fonts.google.com/specimen/jsMath+cmmi10"

  font "jsMath-cmmi10.ttf"

  # No zap stanza required
end
