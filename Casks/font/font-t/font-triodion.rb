cask "font-triodion" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/triodion/Triodion-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Triodion"
  homepage "https://fonts.google.com/specimen/Triodion"

  font "Triodion-Regular.ttf"

  # No zap stanza required
end
