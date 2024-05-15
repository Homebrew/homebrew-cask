cask "font-jsmath-cmex10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/jsmathcmex10/jsMath-cmex10.ttf",
      verified: "github.com/google/fonts/"
  name "jsMath cmex10"
  homepage ""

  font "jsMath-cmex10.ttf"

  # No zap stanza required
end
