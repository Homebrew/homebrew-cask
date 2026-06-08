cask "font-amita" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amita"
  name "Amita"
  homepage "https://fonts.google.com/specimen/Amita"

  font "Amita-Bold.ttf"
  font "Amita-Regular.ttf"

  # No zap stanza required
end
