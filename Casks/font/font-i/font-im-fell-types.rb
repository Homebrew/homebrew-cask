cask "font-im-fell-types" do
  version :latest
  sha256 :no_check

  url "https://iginomarini.com/fell/wp-content/uploads/IMFellTypesClass.zip"
  name "IM Fell Types"
  homepage "https://iginomarini.com/fell/"

  disable! date: "2024-04-04", because: :no_longer_available

  font "IMFeDPit29C.otf"
  font "IMFeDPrm29C.otf"
  font "IMFeENit29C.otf"
  font "IMFeENrm29C.otf"
  font "IMFeFCit29C.otf"
  font "IMFeFCrm29C.otf"
  font "IMFeFlow1.otf"
  font "IMFeFlow2.otf"
  font "IMFeGPit29C.otf"
  font "IMFeGPrm29C.otf"
  font "IMFePIit29C.otf"
  font "IMFePIrm29C.otf"
  font "IMFeTLrm29C.otf"

  # No zap stanza required
end
