cask "font-epunda-slab" do
  version "1.103"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/epundaslab"
  name "Epunda Slab"
  homepage "https://fonts.google.com/specimen/Epunda+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Epunda Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EpundaSlab-Italic[wght].ttf"
  font "EpundaSlab[wght].ttf"

  # No zap stanza required
end
