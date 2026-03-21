cask "font-playwrite-gb-j" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwritegbj"
  name "Playwrite GB J"
  homepage "https://fonts.google.com/specimen/Playwrite+GB+J"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite GB J",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteGBJ-Italic[wght].ttf"
  font "PlaywriteGBJ[wght].ttf"

  # No zap stanza required
end
