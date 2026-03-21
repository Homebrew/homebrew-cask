cask "font-bona-nova" do
  version "4.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bonanova"
  name "Bona Nova"
  homepage "https://fonts.google.com/specimen/Bona+Nova"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bona Nova",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BonaNova-Bold.ttf"
  font "BonaNova-Italic.ttf"
  font "BonaNova-Regular.ttf"

  # No zap stanza required
end
