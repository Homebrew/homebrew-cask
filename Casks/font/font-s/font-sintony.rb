cask "font-sintony" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/sintony"
  name "Sintony"
  homepage "https://fonts.google.com/specimen/Sintony"

  font "Sintony-Bold.ttf"
  font "Sintony-Regular.ttf"

  # No zap stanza required
end
