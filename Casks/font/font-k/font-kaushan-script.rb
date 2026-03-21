cask "font-kaushan-script" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kaushanscript/KaushanScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kaushan Script"
  homepage "https://fonts.google.com/specimen/Kaushan+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kaushan Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KaushanScript-Regular.ttf"

  # No zap stanza required
end
