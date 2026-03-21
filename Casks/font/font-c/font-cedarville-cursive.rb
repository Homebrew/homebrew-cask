cask "font-cedarville-cursive" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cedarvillecursive/Cedarville-Cursive.ttf",
      verified: "github.com/google/fonts/"
  name "Cedarville Cursive"
  homepage "https://fonts.google.com/specimen/Cedarville+Cursive"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cedarville Cursive",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cedarville-Cursive.ttf"

  # No zap stanza required
end
