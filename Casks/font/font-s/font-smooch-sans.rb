cask "font-smooch-sans" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smoochsans/SmoochSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Smooch Sans"
  homepage "https://fonts.google.com/specimen/Smooch+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Smooch Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SmoochSans[wght].ttf"

  # No zap stanza required
end
