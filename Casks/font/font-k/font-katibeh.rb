cask "font-katibeh" do
  version "1.0010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/katibeh/Katibeh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Katibeh"
  homepage "https://fonts.google.com/specimen/Katibeh"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Katibeh",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Katibeh-Regular.ttf"

  # No zap stanza required
end
