cask "font-profontx" do
  version :latest
  sha256 :no_check

  url "http://faisal.com/software/profontx/ProFontX.zip"
  name "ProFontX"
  homepage "http://faisal.com/software/profontx/"

  font "ProFontX/ProFontX"

  # No zap stanza required
end
