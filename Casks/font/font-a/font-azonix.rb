cask "font-azonix" do
  version :latest
  sha256 :no_check

  url "https://dl.dafont.com/dl/?f=azonix"
  name "Azonix"
  homepage "https://www.dafont.com/azonix.font"

  font "Azonix.otf"

  # No zap stanza required
end
