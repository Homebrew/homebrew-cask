cask "font-gluten" do
  version "1.300"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gluten/Gluten%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Gluten"
  homepage "https://fonts.google.com/specimen/Gluten"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gluten",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gluten[slnt,wght].ttf"

  # No zap stanza required
end
