cask "font-makinas4" do
  # NOTE: "4" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/makinas4.zip"
  name "Makinas 4"
  homepage "https://moji-waku.com/makinas/index.html"

  font "makinas4/Makinas-4-Flat.otf"
  font "makinas4/Makinas-4-Square.otf"

  # No zap stanza required
end
