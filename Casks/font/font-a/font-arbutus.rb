cask "font-arbutus" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arbutus/Arbutus-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Arbutus"
  homepage "https://fonts.google.com/specimen/Arbutus"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arbutus",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arbutus-Regular.ttf"

  # No zap stanza required
end
