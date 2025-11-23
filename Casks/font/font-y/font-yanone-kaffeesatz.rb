cask "font-yanone-kaffeesatz" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yanonekaffeesatz/YanoneKaffeesatz%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Yanone Kaffeesatz"
  homepage "https://fonts.google.com/specimen/Yanone+Kaffeesatz"

  font "YanoneKaffeesatz[wght].ttf"

  # No zap stanza required
end
