cask "font-mountains-of-christmas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/mountainsofchristmas"
  name "Mountains of Christmas"
  homepage "https://fonts.google.com/specimen/Mountains+of+Christmas"

  font "MountainsofChristmas-Bold.ttf"
  font "MountainsofChristmas-Regular.ttf"

  # No zap stanza required
end
