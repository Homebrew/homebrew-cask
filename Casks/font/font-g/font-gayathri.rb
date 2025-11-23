cask "font-gayathri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gayathri"
  name "Gayathri"
  homepage "https://fonts.google.com/specimen/Gayathri"

  font "Gayathri-Bold.ttf"
  font "Gayathri-Regular.ttf"
  font "Gayathri-Thin.ttf"

  # No zap stanza required
end
