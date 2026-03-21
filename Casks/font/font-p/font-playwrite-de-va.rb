cask "font-playwrite-de-va" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedeva/PlaywriteDEVA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE VA"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+VA"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE VA",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDEVA[wght].ttf"

  # No zap stanza required
end
