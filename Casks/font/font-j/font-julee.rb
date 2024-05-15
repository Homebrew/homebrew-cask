cask "font-julee" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/julee/Julee-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Julee"
  homepage "https://fonts.google.com/specimen/Julee"

  font "Julee-Regular.ttf"

  # No zap stanza required
end
