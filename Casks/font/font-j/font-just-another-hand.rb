cask "font-just-another-hand" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/justanotherhand/JustAnotherHand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Just Another Hand"
  homepage "https://fonts.google.com/specimen/Just+Another+Hand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Just Another Hand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JustAnotherHand-Regular.ttf"

  # No zap stanza required
end
