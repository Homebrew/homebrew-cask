cask "font-playwrite-be-vlg" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebevlg/PlaywriteBEVLG%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE VLG"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+VLG"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite BE VLG",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteBEVLG[wght].ttf"

  # No zap stanza required
end
