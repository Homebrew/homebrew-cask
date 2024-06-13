cask "font-plangothic" do
  version "1.8.5760"
  sha256 "036c72bb6de45d175039c86d64cf67fb88136b01989fa3880b0fdb79232e527e"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project/archive/refs/tags/V#{version}.zip"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-Project-#{version}/PlangothicP1-Regular (allideo).ttf"
  font "Plangothic-Project-#{version}/PlangothicP2-Regular.ttf"

  # No zap stanza required
end
