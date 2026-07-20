cask "font-alumni-sans-pinstripe" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alumnisanspinstripe"
  name "Alumni Sans Pinstripe"
  homepage "https://fonts.google.com/specimen/Alumni+Sans+Pinstripe"

  font "AlumniSansPinstripe-Italic.ttf"
  font "AlumniSansPinstripe-Regular.ttf"

  # No zap stanza required
end
