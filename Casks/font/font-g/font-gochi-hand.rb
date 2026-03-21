cask "font-gochi-hand" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gochihand/GochiHand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gochi Hand"
  homepage "https://fonts.google.com/specimen/Gochi+Hand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gochi Hand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GochiHand-Regular.ttf"

  # No zap stanza required
end
