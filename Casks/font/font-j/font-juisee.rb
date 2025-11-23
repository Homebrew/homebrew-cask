cask "font-juisee" do
  version "0.2.0"
  sha256 "787407eebc70d0937aa13025e06536175be9389150659dd07435cd4f4f24f97d"

  url "https://github.com/yuru7/juisee/releases/download/v#{version}/Juisee_v#{version}.zip"
  name "Juisee"
  homepage "https://github.com/yuru7/juisee"

  font "Juisee_v#{version}/Juisee-Bold.ttf"
  font "Juisee_v#{version}/Juisee-BoldItalic.ttf"
  font "Juisee_v#{version}/Juisee-Regular.ttf"
  font "Juisee_v#{version}/Juisee-RegularItalic.ttf"
  font "Juisee_v#{version}/JuiseeHW-Bold.ttf"
  font "Juisee_v#{version}/JuiseeHW-BoldItalic.ttf"
  font "Juisee_v#{version}/JuiseeHW-Regular.ttf"
  font "Juisee_v#{version}/JuiseeHW-RegularItalic.ttf"

  # No zap stanza required
end
