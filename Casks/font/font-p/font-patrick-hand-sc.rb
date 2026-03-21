cask "font-patrick-hand-sc" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/patrickhandsc/PatrickHandSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Patrick Hand SC"
  homepage "https://fonts.google.com/specimen/Patrick+Hand+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Patrick Hand SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PatrickHandSC-Regular.ttf"

  # No zap stanza required
end
