cask "font-noto-sans-inscriptional-parthian" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansinscriptionalparthian/NotoSansInscriptionalParthian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Inscriptional Parthian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Inscriptional+Parthian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Inscriptional Parthian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansInscriptionalParthian-Regular.ttf"

  # No zap stanza required
end
