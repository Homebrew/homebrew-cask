cask "font-roboto-mono" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/robotomono"
  name "Roboto Mono"
  homepage "https://fonts.google.com/specimen/Roboto+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Roboto Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RobotoMono-Italic[wght].ttf"
  font "RobotoMono[wght].ttf"

  # No zap stanza required
end
