cask "font-combo" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/combo/Combo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Combo"
  homepage "https://fonts.google.com/specimen/Combo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Combo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Combo-Regular.ttf"

  # No zap stanza required
end
