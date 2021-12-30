cask "noisebuddy" do
  version "1.3"
  sha256 "e16dae432d0c77aa394e62abb6b2452cab94150614638e998d2494c86a44beeb"

  url "https://github.com/insidegui/NoiseBuddy/releases/download/#{version}/NoiseBuddy_v#{version}.zip"
  name "NoiseBuddy"
  homepage "https://github.com/insidegui/NoiseBuddy"

  depends_on macos: ">= :catalina"

  app "NoiseBuddy.app"
end
