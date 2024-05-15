cask "font-gensekigothic" do
  version "1.501"
  sha256 "d4baad35c36428fe355648615c30bfb5f74bc1d4eca12e88af664a83fb7c7d6a"

  url "https://github.com/ButTaiwan/genseki-font/releases/download/v#{version}/GenSekiGothic.zip"
  name "GenSekiGothic"
  homepage "https://github.com/ButTaiwan/genseki-font"

  font "GenSekiGothic-B.ttc"
  font "GenSekiGothic-H.ttc"
  font "GenSekiGothic-L.ttc"
  font "GenSekiGothic-M.ttc"
  font "GenSekiGothic-R.ttc"

  # No zap stanza required
end
