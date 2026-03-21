cask "font-sour-gummy" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sourgummy"
  name "Sour Gummy"
  homepage "https://fonts.google.com/specimen/Sour+Gummy"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sour Gummy",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SourGummy-Italic[wdth,wght].ttf"
  font "SourGummy[wdth,wght].ttf"

  # No zap stanza required
end
