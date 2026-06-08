cask "font-dhyana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dhyana"
  name "Dhyana"
  homepage "https://fonts.google.com/earlyaccess"

  font "Dhyana-Bold.ttf"
  font "Dhyana-Regular.ttf"

  # No zap stanza required
end
