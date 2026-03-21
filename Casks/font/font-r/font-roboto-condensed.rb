cask "font-roboto-condensed" do
  version "3.008"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/robotocondensed"
  name "Roboto Condensed"
  homepage "https://fonts.google.com/specimen/Roboto+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Roboto Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RobotoCondensed-Italic[wght].ttf"
  font "RobotoCondensed[wght].ttf"

  # No zap stanza required
end
