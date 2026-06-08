cask "font-allan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/allan"
  name "Allan"
  homepage "https://fonts.google.com/specimen/Allan"

  font "Allan-Bold.ttf"
  font "Allan-Regular.ttf"

  # No zap stanza required
end
