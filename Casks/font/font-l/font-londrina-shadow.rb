cask "font-londrina-shadow" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/londrinashadow/LondrinaShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Londrina Shadow"
  homepage "https://fonts.google.com/specimen/Londrina+Shadow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Londrina Shadow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LondrinaShadow-Regular.ttf"

  # No zap stanza required
end
