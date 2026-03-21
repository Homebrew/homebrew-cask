cask "font-big-shoulders-inline" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinline/BigShouldersInline%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Inline"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Inline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Big Shoulders Inline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BigShouldersInline[opsz,wght].ttf"

  # No zap stanza required
end
