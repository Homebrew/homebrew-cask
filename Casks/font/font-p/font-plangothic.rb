cask "font-plangothic" do
  version "2.9.5792"
  sha256 "dff4ca9bbb642c4cace1ed25bf224463bd6dccf1b197bcc5aa0fb15cac60e776"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic_Project/releases/download/V#{version}/Plangothic-OTF-V#{version}.7z"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-OTF-V#{version}/PlangothicP1-Regular.otf"
  font "Plangothic-OTF-V#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
