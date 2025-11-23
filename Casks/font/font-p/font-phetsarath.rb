cask "font-phetsarath" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/phetsarath"
  name "Phetsarath"
  homepage "https://fonts.google.com/specimen/Phetsarath"

  font "Phetsarath-Bold.ttf"
  font "Phetsarath-Regular.ttf"

  # No zap stanza required
end
