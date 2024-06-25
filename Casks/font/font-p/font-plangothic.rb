cask "font-plangothic" do
  version "1.8.5760"
  sha256 "aa5f27a28a275743ee7a667c7f6cee14702c9ed5439ffc0f04c9d7da0384c34c"

  url "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project/archive/refs/tags/V#{version}.tar.gz"
  name "Plangothic"
  homepage "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic-Project"

  font "Plangothic-Project-#{version}/PlangothicP1-Regular (allideo).ttf"
  font "Plangothic-Project-#{version}/PlangothicP2-Regular.ttf"

  # No zap stanza required
end
