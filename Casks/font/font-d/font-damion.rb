cask "font-damion" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/damion/Damion-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Damion"
  homepage "https://fonts.google.com/specimen/Damion"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Damion",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Damion-Regular.ttf"

  # No zap stanza required
end
