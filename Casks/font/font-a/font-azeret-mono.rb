cask "font-azeret-mono" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/azeretmono"
  name "Azeret Mono"
  homepage "https://fonts.google.com/specimen/Azeret+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Azeret Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AzeretMono-Italic[wght].ttf"
  font "AzeretMono[wght].ttf"

  # No zap stanza required
end
