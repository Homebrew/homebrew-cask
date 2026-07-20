cask "font-asul" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/asul"
  name "Asul"
  homepage "https://fonts.google.com/specimen/Asul"

  font "Asul-Bold.ttf"
  font "Asul-Regular.ttf"

  # No zap stanza required
end
