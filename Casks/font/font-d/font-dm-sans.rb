cask "font-dm-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmsans"
  name "DM Sans"
  homepage "https://fonts.google.com/specimen/DM+Sans"

  font "DMSans-Italic[opsz,wght].ttf"
  font "DMSans[opsz,wght].ttf"

  # No zap stanza required
end
