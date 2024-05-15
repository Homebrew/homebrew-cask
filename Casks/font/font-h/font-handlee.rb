cask "font-handlee" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/handlee/Handlee-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Handlee"
  homepage "https://fonts.google.com/specimen/Handlee"

  font "Handlee-Regular.ttf"

  # No zap stanza required
end
