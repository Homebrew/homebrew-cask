cask "font-plangothic" do
  version "2.9.5779"
  sha256 "1139867931a1cdfc7777a755824be5f31c79b0fc9f42d545f6f57981fa2119ba"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic_Project/releases/download/V#{version}/Plangothic-OTF-V#{version}.7z"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-OTF-V#{version}/PlangothicP1-Regular.otf"
  font "Plangothic-OTF-V#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
