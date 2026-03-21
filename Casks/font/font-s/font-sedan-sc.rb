cask "font-sedan-sc" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sedansc/SedanSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sedan SC"
  homepage "https://fonts.google.com/specimen/Sedan+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sedan SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SedanSC-Regular.ttf"

  # No zap stanza required
end
