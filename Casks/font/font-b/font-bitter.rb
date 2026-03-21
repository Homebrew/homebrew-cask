cask "font-bitter" do
  version "3.021"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bitter"
  name "Bitter"
  homepage "https://fonts.google.com/specimen/Bitter"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bitter",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bitter-Italic[wght].ttf"
  font "Bitter[wght].ttf"

  # No zap stanza required
end
