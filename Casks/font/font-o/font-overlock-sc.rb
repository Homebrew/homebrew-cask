cask "font-overlock-sc" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/overlocksc/OverlockSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Overlock SC"
  homepage "https://fonts.google.com/specimen/Overlock+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Overlock SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OverlockSC-Regular.ttf"

  # No zap stanza required
end
