cask "font-patrick-hand" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/patrickhand/PatrickHand-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Patrick Hand"
  homepage "https://fonts.google.com/specimen/Patrick+Hand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Patrick Hand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PatrickHand-Regular.ttf"

  # No zap stanza required
end
