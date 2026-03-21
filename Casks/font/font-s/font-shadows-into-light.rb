cask "font-shadows-into-light" do
  version "001.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shadowsintolight/ShadowsIntoLight.ttf",
      verified: "github.com/google/fonts/"
  name "Shadows Into Light"
  homepage "https://fonts.google.com/specimen/Shadows+Into+Light"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shadows Into Light",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShadowsIntoLight.ttf"

  # No zap stanza required
end
