cask "font-genwanmin" do
  version "1.501"
  sha256 "8eb2b17f7c4d3fc1bd16a51f2e70e55a51f1ea39afc967640fa35af1102da1d6"

  url "https://github.com/ButTaiwan/genwan-font/releases/download/v#{version}/GenWanMin.zip"
  name "GenWanMin"
  homepage "https://github.com/ButTaiwan/genwan-font"

  font "GenWanMin-EL.ttc"
  font "GenWanMin-L.ttc"
  font "GenWanMin-M.ttc"
  font "GenWanMin-R.ttc"
  font "GenWanMin-SB.ttc"

  # No zap stanza required
end
