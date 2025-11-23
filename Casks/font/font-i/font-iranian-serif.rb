cask "font-iranian-serif" do
  version :latest
  sha256 :no_check

  url "https://fontlibrary.org/assets/downloads/iranian-serif/3bf122e0d984a0a116a95491c835ec49/iranian-serif.zip"
  name "Iranian Serif"
  homepage "https://fontlibrary.org/en/font/iranian-serif"

  font "irseri.ttf"

  # No zap stanza required
end
