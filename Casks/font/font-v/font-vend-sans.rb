cask "font-vend-sans" do
  version "1.611"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vendsans"
  name "Vend Sans"
  homepage "https://fonts.google.com/specimen/Vend+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vend Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VendSans-Italic[wght].ttf"
  font "VendSans[wght].ttf"

  # No zap stanza required
end
