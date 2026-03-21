cask "font-vt323" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vt323/VT323-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "VT323"
  homepage "https://fonts.google.com/specimen/VT323"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "VT323",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VT323-Regular.ttf"

  # No zap stanza required
end
