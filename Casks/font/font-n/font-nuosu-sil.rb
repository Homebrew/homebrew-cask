cask "font-nuosu-sil" do
  version "2.300"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nuosusil/NuosuSIL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nuosu SIL"
  homepage "https://fonts.google.com/specimen/Nuosu+SIL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nuosu SIL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NuosuSIL-Regular.ttf"

  # No zap stanza required
end
