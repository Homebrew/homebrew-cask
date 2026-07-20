cask "font-pt-sans-narrow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ptsansnarrow"
  name "PT Sans Narrow"
  homepage "https://fonts.google.com/specimen/PT+Sans+Narrow"

  font "PT_Sans-Narrow-Web-Bold.ttf"
  font "PT_Sans-Narrow-Web-Regular.ttf"

  # No zap stanza required
end
