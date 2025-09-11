cask "font-plangothic" do
  version "2.9.5787"
  sha256 "98e88ae093f0cb4ec7142eb3e517c9117ec00e434f425857adb52c2b333a8e4b"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic_Project/releases/download/V#{version}/Plangothic-OTF-V#{version}.7z"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-OTF-V#{version}/PlangothicP1-Regular.otf"
  font "Plangothic-OTF-V#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
