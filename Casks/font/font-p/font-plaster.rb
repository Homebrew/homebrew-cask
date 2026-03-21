cask "font-plaster" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/plaster/Plaster-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Plaster"
  homepage "https://fonts.google.com/specimen/Plaster"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Plaster",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Plaster-Regular.ttf"

  # No zap stanza required
end
