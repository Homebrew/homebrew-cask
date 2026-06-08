cask "font-farro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/farro"
  name "Farro"
  homepage "https://fonts.google.com/specimen/Farro"

  font "Farro-Bold.ttf"
  font "Farro-Light.ttf"
  font "Farro-Medium.ttf"
  font "Farro-Regular.ttf"

  # No zap stanza required
end
