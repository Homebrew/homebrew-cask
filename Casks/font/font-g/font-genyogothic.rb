cask "font-genyogothic" do
  version "1.501"
  sha256 "d90705ecb3ab25a9b98972fcb244323b6a0c76c4320bb7e0ab1b82815f727086"

  url "https://github.com/ButTaiwan/genyog-font/releases/download/v#{version}/GenYoGothic.zip"
  name "GenYoGothic"
  homepage "https://github.com/ButTaiwan/genyog-font"

  font "GenYoGothic-B.ttc"
  font "GenYoGothic-EL.ttc"
  font "GenYoGothic-H.ttc"
  font "GenYoGothic-L.ttc"
  font "GenYoGothic-M.ttc"
  font "GenYoGothic-N.ttc"
  font "GenYoGothic-R.ttc"

  # No zap stanza required
end
