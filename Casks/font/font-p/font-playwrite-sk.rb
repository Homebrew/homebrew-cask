cask "font-playwrite-sk" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritesk/PlaywriteSK%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite SK"
  homepage "https://fonts.google.com/specimen/Playwrite+SK"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite SK",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteSK[wght].ttf"

  # No zap stanza required
end
