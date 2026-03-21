cask "font-chango" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chango/Chango-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chango"
  homepage "https://fonts.google.com/specimen/Chango"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chango",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Chango-Regular.ttf"

  # No zap stanza required
end
