cask "font-rowdies" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rowdies"
  name "Rowdies"
  homepage "https://fonts.google.com/specimen/Rowdies"

  font "Rowdies-Bold.ttf"
  font "Rowdies-Light.ttf"
  font "Rowdies-Regular.ttf"

  # No zap stanza required
end
