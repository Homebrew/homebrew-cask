cask "font-noto-sans-inscriptional-pahlavi" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansinscriptionalpahlavi/NotoSansInscriptionalPahlavi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Inscriptional Pahlavi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Inscriptional+Pahlavi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Inscriptional Pahlavi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansInscriptionalPahlavi-Regular.ttf"

  # No zap stanza required
end
