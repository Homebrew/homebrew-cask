cask "font-stick" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stick/Stick-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stick"
  homepage "https://fonts.google.com/specimen/Stick"

  font "Stick-Regular.ttf"

  # No zap stanza required
end
