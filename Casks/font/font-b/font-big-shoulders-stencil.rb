cask "font-big-shoulders-stencil" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersstencil/BigShouldersStencil%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Stencil"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Stencil"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Big Shoulders Stencil",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BigShouldersStencil[opsz,wght].ttf"

  # No zap stanza required
end
