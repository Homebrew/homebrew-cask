cask "font-yaldevi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yaldevi/Yaldevi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Yaldevi"
  homepage "https://fonts.google.com/specimen/Yaldevi"

  font "Yaldevi[wght].ttf"

  # No zap stanza required
end
