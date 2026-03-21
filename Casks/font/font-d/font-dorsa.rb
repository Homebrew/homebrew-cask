cask "font-dorsa" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dorsa/Dorsa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dorsa"
  homepage "https://fonts.google.com/specimen/Dorsa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dorsa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dorsa-Regular.ttf"

  # No zap stanza required
end
