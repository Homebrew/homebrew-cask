cask "font-playwrite-cl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecl/PlaywriteCL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CL"
  homepage "https://fonts.google.com/specimen/Playwrite+CL"

  font "PlaywriteCL[wght].ttf"

  # No zap stanza required
end
