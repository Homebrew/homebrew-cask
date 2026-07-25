cask "font-secular-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/secularone/SecularOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Secular One"
  homepage "https://fonts.google.com/specimen/Secular+One"

  font "SecularOne-Regular.ttf"

  # No zap stanza required
end
