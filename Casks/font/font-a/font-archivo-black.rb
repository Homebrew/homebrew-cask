cask "font-archivo-black" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/archivoblack/ArchivoBlack-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Archivo Black"
  homepage "https://fonts.google.com/specimen/Archivo+Black"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Archivo Black",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArchivoBlack-Regular.ttf"

  # No zap stanza required
end
