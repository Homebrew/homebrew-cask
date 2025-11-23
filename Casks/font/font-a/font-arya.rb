cask "font-arya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arya"
  name "Arya"
  homepage "https://fonts.google.com/specimen/Arya"

  font "Arya-Bold.ttf"
  font "Arya-Regular.ttf"

  # No zap stanza required
end
