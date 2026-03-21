cask "font-bona-nova-sc" do
  version "4.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bonanovasc"
  name "Bona Nova SC"
  homepage "https://fonts.google.com/specimen/Bona+Nova+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bona Nova SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BonaNovaSC-Bold.ttf"
  font "BonaNovaSC-Italic.ttf"
  font "BonaNovaSC-Regular.ttf"

  # No zap stanza required
end
