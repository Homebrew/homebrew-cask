cask "font-telex" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/telex/Telex-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Telex"
  homepage "https://fonts.google.com/specimen/Telex"

  font "Telex-Regular.ttf"

  # No zap stanza required
end
