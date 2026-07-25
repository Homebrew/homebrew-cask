cask "font-ruwudu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ruwudu"
  name "Ruwudu"
  homepage "https://fonts.google.com/specimen/Ruwudu"

  font "Ruwudu-Bold.ttf"
  font "Ruwudu-Medium.ttf"
  font "Ruwudu-Regular.ttf"
  font "Ruwudu-SemiBold.ttf"

  # No zap stanza required
end
