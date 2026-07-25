cask "font-conakry" do
  version :latest
  sha256 :no_check

  url "https://www.evertype.com/fonts/nko/ConakryFont.zip"
  name "Conakry"
  homepage "https://www.evertype.com/fonts/nko/"

  font "ConakryFont/Conakry.ttf"

  # No zap stanza required
end
