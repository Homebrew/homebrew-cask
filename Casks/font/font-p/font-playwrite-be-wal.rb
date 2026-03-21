cask "font-playwrite-be-wal" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebewal/PlaywriteBEWAL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE WAL"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+WAL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite BE WAL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteBEWAL[wght].ttf"

  # No zap stanza required
end
