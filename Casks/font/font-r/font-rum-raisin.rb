cask "font-rum-raisin" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rumraisin/RumRaisin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rum Raisin"
  homepage "https://fonts.google.com/specimen/Rum+Raisin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rum Raisin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RumRaisin-Regular.ttf"

  # No zap stanza required
end
