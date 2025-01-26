cask "font-monomakh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monomakh/Monomakh-Regular.ttf"
  name "Monomakh"
  homepage "https://github.com/slavonic/Monomakh"

  font "Monomakh-Regular.ttf"

  # No zap stanza required
end
