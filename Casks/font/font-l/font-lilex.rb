cask "font-lilex" do
  version "2.520"
  sha256 "c19cac5d41d763f6edd92fed1799e2522ee994452ab6ce979bbcedcef187c46d"

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
