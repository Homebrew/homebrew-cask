cask "font-mogra" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mogra/Mogra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mogra"
  homepage "https://fonts.google.com/specimen/Mogra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mogra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mogra-Regular.ttf"

  # No zap stanza required
end
