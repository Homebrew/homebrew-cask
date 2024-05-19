cask "font-chocolate-classical-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chocolateclassicalsans/ChocolateClassicalSans-Regular.ttf"
  name "Chocolate Classical Sans"
  homepage "https://github.com/aaronbell/ChocolateSans"

  font "ChocolateClassicalSans-Regular.ttf"

  # No zap stanza required
end
