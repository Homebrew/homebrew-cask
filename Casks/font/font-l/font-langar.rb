cask "font-langar" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/langar/Langar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Langar"
  homepage "https://fonts.google.com/specimen/Langar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Langar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Langar-Regular.ttf"

  # No zap stanza required
end
