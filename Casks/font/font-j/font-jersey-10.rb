cask "font-jersey-10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey10/Jersey10-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 10"
  homepage "https://fonts.google.com/specimen/Jersey+10"

  font "Jersey10-Regular.ttf"

  # No zap stanza required
end
