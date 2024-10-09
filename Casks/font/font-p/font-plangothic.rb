cask "font-plangothic" do
  version "1.9.5766"
  sha256 "0f0f153732c41212b8e0bdf2ca60bb45893f4fda2a8cfe8df96b0e90648e0d6f"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project/archive/refs/tags/V#{version}.tar.gz"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-Project-#{version}/PlangothicP1-Regular (allideo).otf"
  font "Plangothic-Project-#{version}/PlangothicP2-Regular.otf"

  # No zap stanza required
end
