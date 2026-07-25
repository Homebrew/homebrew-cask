cask "font-noto-serif-khitan-small-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkhitansmallscript/NotoSerifKhitanSmallScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Khitan Small Script"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Khitan+Small+Script"

  font "NotoSerifKhitanSmallScript-Regular.ttf"

  # No zap stanza required
end
