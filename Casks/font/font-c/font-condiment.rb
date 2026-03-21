cask "font-condiment" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/condiment/Condiment-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Condiment"
  homepage "https://fonts.google.com/specimen/Condiment"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Condiment",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Condiment-Regular.ttf"

  # No zap stanza required
end
