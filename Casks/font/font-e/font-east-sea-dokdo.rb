cask "font-east-sea-dokdo" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eastseadokdo/EastSeaDokdo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "East Sea Dokdo"
  homepage "https://fonts.google.com/specimen/East+Sea+Dokdo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "East Sea Dokdo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EastSeaDokdo-Regular.ttf"

  # No zap stanza required
end
