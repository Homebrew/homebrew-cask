cask "font-powerline-symbols" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/powerline/raw/master/font/PowerlineSymbols.otf"
  name "Powerline Symbols"
  homepage "https://github.com/powerline/powerline"

  font "PowerlineSymbols.otf"

  # No zap stanza required
end
