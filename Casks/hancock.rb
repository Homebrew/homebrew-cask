cask "hancock" do
  version "1.2.1"
  sha256 "1e2334f6da60b6adf9654aa340d90d7cc5d26ed6622752f127f625fe88af4232"

  url "https://github.com/JeremyAgost/Hancock/releases/download/v#{version}/Hancock.#{version}.dmg"
  appcast "https://github.com/JeremyAgost/Hancock/releases.atom"
  name "Hancock"
  homepage "https://github.com/JeremyAgost/Hancock"

  app "Hancock.app"
end
