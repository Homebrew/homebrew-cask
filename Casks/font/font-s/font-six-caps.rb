cask "font-six-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sixcaps/SixCaps.ttf",
      verified: "github.com/google/fonts/"
  name "Six Caps"
  homepage "https://fonts.google.com/specimen/Six+Caps"

  font "SixCaps.ttf"

  # No zap stanza required
end
