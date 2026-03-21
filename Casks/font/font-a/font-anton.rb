cask "font-anton" do
  version "2.116"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anton/Anton-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Anton"
  homepage "https://fonts.google.com/specimen/Anton"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anton",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Anton-Regular.ttf"

  # No zap stanza required
end
