cask "font-modak" do
  version "1.036"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/modak/Modak-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Modak"
  homepage "https://fonts.google.com/specimen/Modak"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Modak",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Modak-Regular.ttf"

  # No zap stanza required
end
