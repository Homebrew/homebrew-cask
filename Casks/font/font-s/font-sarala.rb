cask "font-sarala" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sarala"
  name "Sarala"
  homepage "https://fonts.google.com/specimen/Sarala"

  font "Sarala-Bold.ttf"
  font "Sarala-Regular.ttf"

  # No zap stanza required
end
