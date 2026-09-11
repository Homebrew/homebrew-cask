cask "font-alef" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/alef"
  name "Alef"
  homepage "https://fonts.google.com/specimen/Alef"

  font "Alef-Bold.ttf"
  font "Alef-Regular.ttf"

  # No zap stanza required
end
