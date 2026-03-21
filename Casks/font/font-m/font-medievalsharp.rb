cask "font-medievalsharp" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/medievalsharp/MedievalSharp.ttf",
      verified: "github.com/google/fonts/"
  name "MedievalSharp"
  homepage "https://fonts.google.com/specimen/MedievalSharp"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "MedievalSharp",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MedievalSharp.ttf"

  # No zap stanza required
end
