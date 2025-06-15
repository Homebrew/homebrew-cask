cask "font-plangothic" do
  version "2.9.5777"
  sha256 "1509964f1b5f4047993083e82bc2cabd9217fdb8c0b5e0e767488de3d8095b46"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic_Project/releases/download/V#{version}/Plangothic-OTF-V#{version}.7z"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  no_autobump! because: :requires_manual_review

  font "Plangothic-OTF-V#{version}/PlangothicP1-Regular.otf"
  font "Plangothic-OTF-V#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
