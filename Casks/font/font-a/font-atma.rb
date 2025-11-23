cask "font-atma" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/atma"
  name "Atma"
  homepage "https://fonts.google.com/specimen/Atma"

  font "Atma-Bold.ttf"
  font "Atma-Light.ttf"
  font "Atma-Medium.ttf"
  font "Atma-Regular.ttf"
  font "Atma-SemiBold.ttf"

  # No zap stanza required
end
