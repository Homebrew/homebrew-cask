cask "font-atkinson-hyperlegible-mono" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/atkinsonhyperlegiblemono"
  name "Atkinson Hyperlegible Mono"
  homepage "https://fonts.google.com/specimen/Atkinson+Hyperlegible+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Atkinson Hyperlegible Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AtkinsonHyperlegibleMono-Italic[wght].ttf"
  font "AtkinsonHyperlegibleMono[wght].ttf"

  # No zap stanza required
end
