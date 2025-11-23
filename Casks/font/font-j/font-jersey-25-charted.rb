cask "font-jersey-25-charted" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey25charted/Jersey25Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 25 Charted"
  homepage "https://fonts.google.com/specimen/Jersey+25+Charted"

  font "Jersey25Charted-Regular.ttf"

  # No zap stanza required
end
