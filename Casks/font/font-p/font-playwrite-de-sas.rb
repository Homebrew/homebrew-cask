cask "font-playwrite-de-sas" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedesas/PlaywriteDESAS%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE SAS"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+SAS"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE SAS",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDESAS[wght].ttf"

  # No zap stanza required
end
