cask "font-rubik-vinyl" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikvinyl/RubikVinyl-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Vinyl"
  homepage "https://fonts.google.com/specimen/Rubik+Vinyl"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Vinyl",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikVinyl-Regular.ttf"

  # No zap stanza required
end
