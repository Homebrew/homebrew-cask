cask "font-rubik-maps" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmaps/RubikMaps-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Maps"
  homepage "https://fonts.google.com/specimen/Rubik+Maps"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Maps",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikMaps-Regular.ttf"

  # No zap stanza required
end
