cask "font-lilex" do
  version "2.530"
  sha256 "b019fc0da5e3ece5c735aa040218d3b8c9945546d2d333598b587b1237a66c4a"

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
