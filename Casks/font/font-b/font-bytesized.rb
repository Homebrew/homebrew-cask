cask "font-bytesized" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bytesized/Bytesized-Regular.ttf"
  name "Bytesized"
  homepage "https://github.com/balt-dev/bytesized-gf"

  font "Bytesized-Regular.ttf"

  # No zap stanza required
end
