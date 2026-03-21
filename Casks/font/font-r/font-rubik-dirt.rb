cask "font-rubik-dirt" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdirt/RubikDirt-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Dirt"
  homepage "https://fonts.google.com/specimen/Rubik+Dirt"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Dirt",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikDirt-Regular.ttf"

  # No zap stanza required
end
