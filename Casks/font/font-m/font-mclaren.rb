cask "font-mclaren" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mclaren/McLaren-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "McLaren"
  homepage "https://fonts.google.com/specimen/McLaren"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "McLaren",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "McLaren-Regular.ttf"

  # No zap stanza required
end
