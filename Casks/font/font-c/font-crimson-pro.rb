cask "font-crimson-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/crimsonpro"
  name "Crimson Pro"
  homepage "https://fonts.google.com/specimen/Crimson+Pro"

  font "CrimsonPro-Italic[wght].ttf"
  font "CrimsonPro[wght].ttf"

  # No zap stanza required
end
