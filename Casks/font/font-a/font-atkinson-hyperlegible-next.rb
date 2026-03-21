cask "font-atkinson-hyperlegible-next" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/atkinsonhyperlegiblenext"
  name "Atkinson Hyperlegible Next"
  homepage "https://fonts.google.com/specimen/Atkinson+Hyperlegible+Next"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Atkinson Hyperlegible Next",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AtkinsonHyperlegibleNext-Italic[wght].ttf"
  font "AtkinsonHyperlegibleNext[wght].ttf"

  # No zap stanza required
end
