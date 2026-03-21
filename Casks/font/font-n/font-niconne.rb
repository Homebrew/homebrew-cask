cask "font-niconne" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/niconne/Niconne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Niconne"
  homepage "https://fonts.google.com/specimen/Niconne"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Niconne",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Niconne-Regular.ttf"

  # No zap stanza required
end
