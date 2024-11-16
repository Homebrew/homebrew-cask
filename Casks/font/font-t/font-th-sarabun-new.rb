cask "font-th-sarabun-new" do
  version "1.35"
  sha256 :no_check

  url "https://www.f0nt.com/?dl_name=sipafonts/THSarabunNew.zip"
  name "TH Sarabun New"
  homepage "https://www.f0nt.com/release/th-sarabun-new/"

  livecheck do
    url :homepage
    regex(/Sarabun\s+New.*?v?(\d+(?:\.\d+)+)/i)
  end

  font "THSarabunNew Bold.ttf"
  font "THSarabunNew BoldItalic.ttf"
  font "THSarabunNew.ttf"
  font "THSarabunNew Italic.ttf"

  # No zap stanza required
end
