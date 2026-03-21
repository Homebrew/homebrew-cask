cask "font-nosifer" do
  version "001.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nosifer/Nosifer-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nosifer"
  homepage "https://fonts.google.com/specimen/Nosifer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nosifer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Nosifer-Regular.ttf"

  # No zap stanza required
end
