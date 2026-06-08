cask "font-lunasima" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lunasima"
  name "Lunasima"
  homepage "https://fonts.google.com/specimen/Lunasima"

  font "Lunasima-Bold.ttf"
  font "Lunasima-Regular.ttf"

  # No zap stanza required
end
