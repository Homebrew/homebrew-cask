cask "font-playwrite-cl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecl/PlaywriteCL%5Bwght%5D.ttf"
  name "Playwrite CL"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCL[wght].ttf"

  # No zap stanza required
end
