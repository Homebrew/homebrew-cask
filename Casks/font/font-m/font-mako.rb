cask "font-mako" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mako/Mako-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mako"
  homepage "https://fonts.google.com/specimen/Mako"

  font "Mako-Regular.ttf"

  # No zap stanza required
end
