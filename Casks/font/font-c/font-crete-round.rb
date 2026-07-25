cask "font-crete-round" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/creteround"
  name "Crete Round"
  homepage "https://fonts.google.com/specimen/Crete+Round"

  font "CreteRound-Italic.ttf"
  font "CreteRound-Regular.ttf"

  # No zap stanza required
end
