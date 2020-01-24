cask 'noisebuddy' do
  version '1.0'
  sha256 '6d654e208e717193bfe88e2ff7c278fecde96414cbad3d87a3206c1e78452a17'

  url "https://github.com/insidegui/NoiseBuddy/releases/download/#{version}/NoiseBuddy_v#{version}.zip"
  appcast 'https://github.com/insidegui/NoiseBuddy/releases.atom'
  name 'NoiseBuddy'
  homepage 'https://github.com/insidegui/NoiseBuddy'

  depends_on macos: '>= :catalina'

  app 'NoiseBuddy.app'
end
