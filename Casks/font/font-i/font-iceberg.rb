cask "font-iceberg" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/iceberg/Iceberg-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Iceberg"
  homepage "https://fonts.google.com/specimen/Iceberg"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Iceberg",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Iceberg-Regular.ttf"

  # No zap stanza required
end
