cask "font-metal" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metal/Metal-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Metal"
  homepage "https://fonts.google.com/specimen/Metal"

  font "Metal-Regular.ttf"

  # No zap stanza required
end
