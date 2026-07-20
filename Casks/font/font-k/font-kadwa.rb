cask "font-kadwa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kadwa"
  name "Kadwa"
  homepage "https://fonts.google.com/specimen/Kadwa"

  font "Kadwa-Bold.ttf"
  font "Kadwa-Regular.ttf"

  # No zap stanza required
end
