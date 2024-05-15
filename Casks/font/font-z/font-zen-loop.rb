cask "font-zen-loop" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zenloop"
  name "Zen Loop"
  desc "Latin fonts designed by yoshimichi ohira, as part of zen fonts collection"
  homepage "https://fonts.google.com/specimen/Zen+Loop"

  font "ZenLoop-Italic.ttf"
  font "ZenLoop-Regular.ttf"

  # No zap stanza required
end
