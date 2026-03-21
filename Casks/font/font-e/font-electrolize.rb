cask "font-electrolize" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/electrolize/Electrolize-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Electrolize"
  homepage "https://fonts.google.com/specimen/Electrolize"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Electrolize",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Electrolize-Regular.ttf"

  # No zap stanza required
end
