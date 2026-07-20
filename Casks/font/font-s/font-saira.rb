cask "font-saira" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/saira"
  name "Saira"
  homepage "https://fonts.google.com/specimen/Saira"

  font "Saira-Italic[wdth,wght].ttf"
  font "Saira[wdth,wght].ttf"

  # No zap stanza required
end
