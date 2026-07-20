cask "font-tiro-bangla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirobangla"
  name "Tiro Bangla"
  homepage "https://fonts.google.com/specimen/Tiro+Bangla"

  font "TiroBangla-Italic.ttf"
  font "TiroBangla-Regular.ttf"

  # No zap stanza required
end
