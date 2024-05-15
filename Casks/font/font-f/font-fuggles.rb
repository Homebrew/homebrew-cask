cask "font-fuggles" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fuggles/Fuggles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fuggles"
  desc "Powerful script that can be used for sophisticated commercial design"
  homepage "https://fonts.google.com/specimen/Fuggles"

  font "Fuggles-Regular.ttf"

  # No zap stanza required
end
