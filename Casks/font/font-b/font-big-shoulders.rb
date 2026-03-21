cask "font-big-shoulders" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshoulders/BigShoulders%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders"
  homepage "https://fonts.google.com/specimen/Big+Shoulders"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Big Shoulders",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BigShoulders[opsz,wght].ttf"

  # No zap stanza required
end
