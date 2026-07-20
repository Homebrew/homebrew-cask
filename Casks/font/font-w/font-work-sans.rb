cask "font-work-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/worksans"
  name "Work Sans"
  homepage "https://fonts.google.com/specimen/Work+Sans"

  font "WorkSans-Italic[wght].ttf"
  font "WorkSans[wght].ttf"

  # No zap stanza required
end
