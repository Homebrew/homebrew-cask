cask "font-plangothic" do
  version "1.8.5764"
  sha256 "5d4e3f113e1aaf9f95f2733e3ebd677a5853d17426f649058bd637487af27a85"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project/archive/refs/tags/V#{version}.tar.gz"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-Project-#{version}/PlangothicP1-Regular (allideo).otf"
  font "Plangothic-Project-#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
