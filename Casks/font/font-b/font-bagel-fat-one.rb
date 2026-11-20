cask "font-bagel-fat-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bagelfatone/BagelFatOne-Regular.ttf"
  name "Bagel Fat One"
  homepage "https://fonts.google.com/specimen/Bagel+Fat+One"

  font "BagelFatOne-Regular.ttf"

  zap :not_required
end
