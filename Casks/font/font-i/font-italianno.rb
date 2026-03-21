cask "font-italianno" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/italianno/Italianno-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Italianno"
  homepage "https://fonts.google.com/specimen/Italianno"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Italianno",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Italianno-Regular.ttf"

  # No zap stanza required
end
