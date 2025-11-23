cask "font-jersey-10-charted" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey10charted/Jersey10Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 10 Charted"
  homepage "https://fonts.google.com/specimen/Jersey+10+Charted"

  font "Jersey10Charted-Regular.ttf"

  # No zap stanza required
end
