cask "font-lilex" do
  version "2.600"
  sha256 "1bcce6df9692897ae71a061e3d2c0b301cf04a777d99f0a29c76521b5a811f4c"

  url "https://github.com/mishamyrt/Lilex/releases/download/#{version}/Lilex.zip"
  name "Lilex"
  homepage "https://github.com/mishamyrt/Lilex"

  font "ttf/Lilex-Bold.ttf"
  font "ttf/Lilex-ExtraLight.ttf"
  font "ttf/Lilex-Medium.ttf"
  font "ttf/Lilex-Regular.ttf"
  font "ttf/Lilex-Thin.ttf"
  font "variable/Lilex[wght].ttf"

  # No zap stanza required
end
