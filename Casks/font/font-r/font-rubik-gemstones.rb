cask "font-rubik-gemstones" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikgemstones/RubikGemstones-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Gemstones"
  homepage "https://fonts.google.com/specimen/Rubik+Gemstones"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Gemstones",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikGemstones-Regular.ttf"

  # No zap stanza required
end
