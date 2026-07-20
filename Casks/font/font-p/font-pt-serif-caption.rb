cask "font-pt-serif-caption" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ptserifcaption"
  name "PT Serif Caption"
  homepage "https://fonts.google.com/specimen/PT+Serif+Caption"

  font "PT_Serif-Caption-Web-Italic.ttf"
  font "PT_Serif-Caption-Web-Regular.ttf"

  # No zap stanza required
end
