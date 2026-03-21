cask "font-kosugi-maru" do
  version "4.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/kosugimaru/KosugiMaru-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kosugi Maru"
  homepage "https://fonts.google.com/specimen/Kosugi+Maru"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kosugi Maru",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KosugiMaru-Regular.ttf"

  # No zap stanza required
end
