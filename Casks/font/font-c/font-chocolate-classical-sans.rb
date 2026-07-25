cask "font-chocolate-classical-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chocolateclassicalsans/ChocolateClassicalSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chocolate Classical Sans"
  homepage "https://fonts.google.com/specimen/Chocolate+Classical+Sans"

  font "ChocolateClassicalSans-Regular.ttf"

  # No zap stanza required
end
