cask "font-srisakdi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/srisakdi"
  name "Srisakdi"
  homepage "https://fonts.google.com/specimen/Srisakdi"

  font "Srisakdi-Bold.ttf"
  font "Srisakdi-Regular.ttf"

  # No zap stanza required
end
