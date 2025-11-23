cask "font-oregano" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oregano"
  name "Oregano"
  homepage "https://fonts.google.com/specimen/Oregano"

  font "Oregano-Italic.ttf"
  font "Oregano-Regular.ttf"

  # No zap stanza required
end
