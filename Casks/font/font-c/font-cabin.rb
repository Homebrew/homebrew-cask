cask "font-cabin" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cabin"
  name "Cabin"
  homepage "https://fonts.google.com/specimen/Cabin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cabin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cabin-Italic[wdth,wght].ttf"
  font "Cabin[wdth,wght].ttf"

  # No zap stanza required
end
