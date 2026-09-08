cask "font-cookie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cookie/Cookie-Regular.ttf"
  name "Cookie"
  homepage "https://fonts.google.com/specimen/Cookie"

  font "Cookie-Regular.ttf"

  # No zap stanza required
end
