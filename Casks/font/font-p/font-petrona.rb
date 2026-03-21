cask "font-petrona" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/petrona"
  name "Petrona"
  homepage "https://fonts.google.com/specimen/Petrona"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Petrona",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Petrona-Italic[wght].ttf"
  font "Petrona[wght].ttf"

  # No zap stanza required
end
