cask "font-metal-mania" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/metalmania/MetalMania-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Metal Mania"
  homepage "https://fonts.google.com/specimen/Metal+Mania"

  font "MetalMania-Regular.ttf"

  # No zap stanza required
end
