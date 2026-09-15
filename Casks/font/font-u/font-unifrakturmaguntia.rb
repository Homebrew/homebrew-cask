cask "font-unifrakturmaguntia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unifrakturmaguntia/UnifrakturMaguntia-Book.ttf"
  name "UnifrakturMaguntia"
  homepage "https://fonts.google.com/specimen/UnifrakturMaguntia"

  font "UnifrakturMaguntia-Book.ttf"

  # No zap stanza required
end
