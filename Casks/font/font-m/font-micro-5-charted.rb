cask "font-micro-5-charted" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/micro5charted/Micro5Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Micro 5 Charted"
  homepage "https://fonts.google.com/specimen/Micro+5+Charted"

  font "Micro5Charted-Regular.ttf"

  # No zap stanza required
end
