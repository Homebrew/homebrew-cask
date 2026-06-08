cask "font-abeezee" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/abeezee"
  name "ABeeZee"
  homepage "https://fonts.google.com/specimen/ABeeZee"

  font "ABeeZee-Italic.ttf"
  font "ABeeZee-Regular.ttf"

  # No zap stanza required
end
