cask "font-kurale" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kurale/Kurale-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kurale"
  homepage "https://fonts.google.com/specimen/Kurale"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kurale",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kurale-Regular.ttf"

  # No zap stanza required
end
