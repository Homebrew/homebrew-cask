cask "font-sirivennela" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sirivennela/Sirivennela-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sirivennela"
  homepage "https://fonts.google.com/specimen/Sirivennela"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sirivennela",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sirivennela-Regular.ttf"

  # No zap stanza required
end
