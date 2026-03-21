cask "font-londrina-outline" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/londrinaoutline/LondrinaOutline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Londrina Outline"
  homepage "https://fonts.google.com/specimen/Londrina+Outline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Londrina Outline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LondrinaOutline-Regular.ttf"

  # No zap stanza required
end
