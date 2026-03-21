cask "font-alatsi" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alatsi/Alatsi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alatsi"
  homepage "https://fonts.google.com/specimen/Alatsi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alatsi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alatsi-Regular.ttf"

  # No zap stanza required
end
