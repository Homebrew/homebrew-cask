cask "font-jsmath-cmti10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/jsmathcmti10/jsMath-cmti10.ttf",
      verified: "github.com/google/fonts/"
  name "jsMath cmti10"
  homepage "https://fonts.google.com/specimen/jsMath+cmti10"

  font "jsMath-cmti10.ttf"

  # No zap stanza required
end
