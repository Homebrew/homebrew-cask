cask "font-alumni-sans-inline-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alumnisansinlineone"
  name "Alumni Sans Inline One"
  homepage "https://fonts.google.com/specimen/Alumni+Sans+Inline+One"

  font "AlumniSansInlineOne-Italic.ttf"
  font "AlumniSansInlineOne-Regular.ttf"

  # No zap stanza required
end
