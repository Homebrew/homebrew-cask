cask "font-playwrite-be-wal" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebewal/PlaywriteBEWAL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE WAL"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+WAL"

  font "PlaywriteBEWAL[wght].ttf"

  # No zap stanza required
end
