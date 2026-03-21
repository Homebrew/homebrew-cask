cask "font-montaga" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montaga/Montaga-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Montaga"
  homepage "https://fonts.google.com/specimen/Montaga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Montaga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Montaga-Regular.ttf"

  # No zap stanza required
end
