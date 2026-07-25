cask "font-elsie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/elsie"
  name "Elsie"
  homepage "https://fonts.google.com/specimen/Elsie"

  font "Elsie-Black.ttf"
  font "Elsie-Regular.ttf"

  # No zap stanza required
end
