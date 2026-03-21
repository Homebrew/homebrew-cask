cask "font-ms-madi" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/msmadi/MsMadi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ms Madi"
  homepage "https://fonts.google.com/specimen/Ms+Madi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ms Madi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MsMadi-Regular.ttf"

  # No zap stanza required
end
