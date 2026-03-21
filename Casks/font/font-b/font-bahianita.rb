cask "font-bahianita" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bahianita/Bahianita-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bahianita"
  homepage "https://fonts.google.com/specimen/Bahianita"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bahianita",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bahianita-Regular.ttf"

  # No zap stanza required
end
