cask "font-playwrite-at" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwriteat"
  name "Playwrite AT"
  homepage "https://fonts.google.com/specimen/Playwrite+AT"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AT",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAT-Italic[wght].ttf"
  font "PlaywriteAT[wght].ttf"

  # No zap stanza required
end
