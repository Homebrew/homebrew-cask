cask "font-frijole" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/frijole/Frijole-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Frijole"
  homepage "https://fonts.google.com/specimen/Frijole"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Frijole",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Frijole-Regular.ttf"

  # No zap stanza required
end
