cask "font-astloch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/astloch"
  name "Astloch"
  homepage "https://fonts.google.com/specimen/Astloch"

  font "Astloch-Bold.ttf"
  font "Astloch-Regular.ttf"

  # No zap stanza required
end
