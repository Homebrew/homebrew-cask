cask "font-square-peg" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/squarepeg/SquarePeg-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Square Peg"
  homepage "https://fonts.google.com/specimen/Square+Peg"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Square Peg",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SquarePeg-Regular.ttf"

  # No zap stanza required
end
