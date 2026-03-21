cask "font-lumanosimo" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lumanosimo/Lumanosimo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lumanosimo"
  homepage "https://fonts.google.com/specimen/Lumanosimo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lumanosimo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lumanosimo-Regular.ttf"

  # No zap stanza required
end
