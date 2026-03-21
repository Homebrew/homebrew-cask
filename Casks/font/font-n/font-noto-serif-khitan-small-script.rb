cask "font-noto-serif-khitan-small-script" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkhitansmallscript/NotoSerifKhitanSmallScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Khitan Small Script"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Khitan+Small+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Khitan Small Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifKhitanSmallScript-Regular.ttf"

  # No zap stanza required
end
