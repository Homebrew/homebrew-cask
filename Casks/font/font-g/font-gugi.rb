cask "font-gugi" do
  version "3.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gugi/Gugi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gugi"
  homepage "https://fonts.google.com/specimen/Gugi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gugi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gugi-Regular.ttf"

  # No zap stanza required
end
