cask "font-mountains-of-christmas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/mountainsofchristmas"
  name "Mountains of Christmas"
  desc "The perfect casual and playful serif font when you want to give your words a warm personal touch"
  homepage "https://fonts.google.com/specimen/Mountains+of+Christmas"

  font "MountainsofChristmas-Bold.ttf"
  font "MountainsofChristmas-Regular.ttf"

  # No zap stanza required
end
