cask "font-mouse-memoirs" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mousememoirs/MouseMemoirs-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mouse Memoirs"
  homepage "https://fonts.google.com/specimen/Mouse+Memoirs"

  font "MouseMemoirs-Regular.ttf"

  # No zap stanza required
end
