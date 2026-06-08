cask "font-shantell-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/shantellsans"
  name "Shantell Sans"
  homepage "https://fonts.google.com/specimen/Shantell+Sans"

  font "ShantellSans-Italic[BNCE,INFM,SPAC,wght].ttf"
  font "ShantellSans[BNCE,INFM,SPAC,wght].ttf"

  # No zap stanza required
end
