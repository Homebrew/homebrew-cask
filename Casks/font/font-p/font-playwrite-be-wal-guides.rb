cask "font-playwrite-be-wal-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebewalguides/PlaywriteBEWALGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BE WAL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+BE+WAL+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite BE WAL Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteBEWALGuides-Regular.ttf"

  # No zap stanza required
end
