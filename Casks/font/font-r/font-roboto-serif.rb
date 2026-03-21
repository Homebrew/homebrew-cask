cask "font-roboto-serif" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/robotoserif"
  name "Roboto Serif"
  homepage "https://fonts.google.com/specimen/Roboto+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Roboto Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RobotoSerif-Italic[GRAD,opsz,wdth,wght].ttf"
  font "RobotoSerif[GRAD,opsz,wdth,wght].ttf"

  # No zap stanza required
end
