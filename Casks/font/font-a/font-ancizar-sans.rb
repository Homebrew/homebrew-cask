cask "font-ancizar-sans" do
  version "8.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ancizarsans"
  name "Ancizar Sans"
  homepage "https://fonts.google.com/specimen/Ancizar+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ancizar Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AncizarSans-Italic[wght].ttf"
  font "AncizarSans[wght].ttf"

  # No zap stanza required
end
