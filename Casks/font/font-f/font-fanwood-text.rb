cask "font-fanwood-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fanwoodtext"
  name "Fanwood Text"
  homepage "https://fonts.google.com/specimen/Fanwood+Text"

  font "FanwoodText-Italic.ttf"
  font "FanwoodText-Regular.ttf"

  # No zap stanza required
end
