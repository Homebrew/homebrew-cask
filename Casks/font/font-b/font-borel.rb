cask "font-borel" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/borel/Borel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Borel"
  homepage "https://fonts.google.com/specimen/Borel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Borel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Borel-Regular.ttf"

  # No zap stanza required
end
