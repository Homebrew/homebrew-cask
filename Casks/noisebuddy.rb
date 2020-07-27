cask "noisebuddy" do
  version "1.2"
  sha256 "e5497362319e111fb4a0c9ff9d479e21b75fda768a96ef3497c1fad7db2c7c38"

  url "https://github.com/insidegui/NoiseBuddy/releases/download/#{version}/NoiseBuddy_v#{version}.zip"
  appcast "https://github.com/insidegui/NoiseBuddy/releases.atom"
  name "NoiseBuddy"
  homepage "https://github.com/insidegui/NoiseBuddy"

  depends_on macos: ">= :catalina"

  app "NoiseBuddy.app"
end
