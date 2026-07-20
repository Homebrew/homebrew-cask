cask "font-goldman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/goldman"
  name "Goldman"
  homepage "https://fonts.google.com/specimen/Goldman"

  font "Goldman-Bold.ttf"
  font "Goldman-Regular.ttf"

  # No zap stanza required
end
