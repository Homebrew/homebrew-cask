cask "font-noto-sans-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssc/NotoSansSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans SC"
  desc "Sans-serif design for simplified chinese variant of the han ideograms"
  homepage "https://fonts.google.com/specimen/Noto+Sans+SC"

  font "NotoSansSC[wght].ttf"

  # No zap stanza required
end
