cask "font-beiruti" do
  version "1.41"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/beiruti/Beiruti%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Beiruti"
  homepage "https://fonts.google.com/specimen/Beiruti"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Beiruti",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Beiruti[wght].ttf"

  # No zap stanza required
end
