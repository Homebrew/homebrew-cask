cask "font-dotgothic16" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dotgothic16/DotGothic16-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "DotGothic16"
  homepage "https://fonts.google.com/specimen/DotGothic16"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "DotGothic16",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DotGothic16-Regular.ttf"

  # No zap stanza required
end
