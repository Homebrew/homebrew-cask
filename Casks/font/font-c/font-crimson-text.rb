cask "font-crimson-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/crimsontext"
  name "Crimson Text"
  homepage "https://fonts.google.com/specimen/Crimson+Text"

  font "CrimsonText-Bold.ttf"
  font "CrimsonText-BoldItalic.ttf"
  font "CrimsonText-Italic.ttf"
  font "CrimsonText-Regular.ttf"
  font "CrimsonText-SemiBold.ttf"
  font "CrimsonText-SemiBoldItalic.ttf"

  # No zap stanza required
end
