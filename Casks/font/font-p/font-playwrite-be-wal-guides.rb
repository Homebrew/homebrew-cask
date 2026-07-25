cask "font-playwrite-be-wal-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebewalguides/PlaywriteBEWALGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE WAL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+WAL+Guides"

  font "PlaywriteBEWALGuides-Regular.ttf"

  # No zap stanza required
end
