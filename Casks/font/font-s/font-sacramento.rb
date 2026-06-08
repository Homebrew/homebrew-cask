cask "font-sacramento" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sacramento/Sacramento-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sacramento"
  homepage "https://fonts.google.com/specimen/Sacramento"

  font "Sacramento-Regular.ttf"

  # No zap stanza required
end
