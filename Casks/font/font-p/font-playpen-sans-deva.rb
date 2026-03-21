cask "font-playpen-sans-deva" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansdeva/PlaypenSansDeva%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans Deva"
  homepage "https://fonts.google.com/specimen/Playpen+Sans+Deva"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playpen Sans Deva",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaypenSansDeva[wght].ttf"

  # No zap stanza required
end
