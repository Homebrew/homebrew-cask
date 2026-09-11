cask "font-agdasima" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/agdasima"
  name "Agdasima"
  homepage "https://fonts.google.com/specimen/Agdasima"

  font "Agdasima-Bold.ttf"
  font "Agdasima-Regular.ttf"

  # No zap stanza required
end
