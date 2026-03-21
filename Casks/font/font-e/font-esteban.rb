cask "font-esteban" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/esteban/Esteban-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Esteban"
  homepage "https://fonts.google.com/specimen/Esteban"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Esteban",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Esteban-Regular.ttf"

  # No zap stanza required
end
