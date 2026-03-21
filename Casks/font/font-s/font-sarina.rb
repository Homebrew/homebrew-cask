cask "font-sarina" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sarina/Sarina-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sarina"
  homepage "https://fonts.google.com/specimen/Sarina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sarina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sarina-Regular.ttf"

  # No zap stanza required
end
