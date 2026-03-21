cask "font-tagesschrift" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tagesschrift/Tagesschrift-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tagesschrift"
  homepage "https://fonts.google.com/specimen/Tagesschrift"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tagesschrift",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tagesschrift-Regular.ttf"

  # No zap stanza required
end
