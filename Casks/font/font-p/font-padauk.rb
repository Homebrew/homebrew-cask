cask "font-padauk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/padauk"
  name "Padauk"
  homepage "https://fonts.google.com/specimen/Padauk"

  font "Padauk-Bold.ttf"
  font "Padauk-Regular.ttf"

  # No zap stanza required
end
