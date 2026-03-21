cask "font-trykker" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trykker/Trykker-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Trykker"
  homepage "https://fonts.google.com/specimen/Trykker"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Trykker",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Trykker-Regular.ttf"

  # No zap stanza required
end
