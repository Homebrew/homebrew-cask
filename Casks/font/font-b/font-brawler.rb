cask "font-brawler" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/brawler"
  name "Brawler"
  homepage "https://fonts.google.com/specimen/Brawler"

  font "Brawler-Bold.ttf"
  font "Brawler-Regular.ttf"

  # No zap stanza required
end
