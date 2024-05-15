cask "font-bagel-fat-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bagelfatone/BagelFatOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bagel Fat One"
  homepage "https://fonts.google.com/specimen/Bagel+Fat+One"

  font "BagelFatOne-Regular.ttf"

  # No zap stanza required
end
