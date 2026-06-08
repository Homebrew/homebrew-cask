cask "font-jacquard-12-charted" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquard12charted/Jacquard12Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacquard 12 Charted"
  homepage "https://fonts.google.com/specimen/Jacquard+12+Charted"

  font "Jacquard12Charted-Regular.ttf"

  # No zap stanza required
end
