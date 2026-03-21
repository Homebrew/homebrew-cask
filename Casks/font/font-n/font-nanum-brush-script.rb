cask "font-nanum-brush-script" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nanumbrushscript/NanumBrushScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nanum Brush Script"
  homepage "https://fonts.google.com/specimen/Nanum+Brush+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nanum Brush Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NanumBrushScript-Regular.ttf"

  # No zap stanza required
end
