cask "font-plangothic" do
  version "2.9.5795"
  sha256 "5a6c8a957ca03487ab86157dc5880af9a4e9f1fa1b74b3693486408d975ff1f9"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic_Project/releases/download/V#{version}/Plangothic-OTF-V#{version}.7z"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-OTF-V#{version}/PlangothicP1-Regular.otf"
  font "Plangothic-OTF-V#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
