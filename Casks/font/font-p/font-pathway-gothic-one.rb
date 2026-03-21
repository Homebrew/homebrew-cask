cask "font-pathway-gothic-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pathwaygothicone/PathwayGothicOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pathway Gothic One"
  homepage "https://fonts.google.com/specimen/Pathway+Gothic+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pathway Gothic One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PathwayGothicOne-Regular.ttf"

  # No zap stanza required
end
