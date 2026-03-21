cask "font-timmana" do
  version "1.0.4"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/timmana/Timmana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Timmana"
  homepage "https://fonts.google.com/specimen/Timmana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Timmana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Timmana-Regular.ttf"

  # No zap stanza required
end
