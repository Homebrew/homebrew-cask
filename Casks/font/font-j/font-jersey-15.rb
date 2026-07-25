cask "font-jersey-15" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey15/Jersey15-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 15"
  homepage "https://fonts.google.com/specimen/Jersey+15"

  font "Jersey15-Regular.ttf"

  # No zap stanza required
end
