cask "font-playwrite-de-la" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedela/PlaywriteDELA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE LA"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+LA"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE LA",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDELA[wght].ttf"

  # No zap stanza required
end
