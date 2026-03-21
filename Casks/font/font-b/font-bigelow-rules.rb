cask "font-bigelow-rules" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigelowrules/BigelowRules-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bigelow Rules"
  homepage "https://fonts.google.com/specimen/Bigelow+Rules"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bigelow Rules",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BigelowRules-Regular.ttf"

  # No zap stanza required
end
