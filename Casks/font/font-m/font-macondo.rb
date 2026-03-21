cask "font-macondo" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/macondo/Macondo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Macondo"
  homepage "https://fonts.google.com/specimen/Macondo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Macondo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Macondo-Regular.ttf"

  # No zap stanza required
end
