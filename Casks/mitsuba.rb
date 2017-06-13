cask 'mitsuba' do
  version '0.5.0'
  sha256 'a838f0b3a4d8bfc1c807539cd5f7298cc6c360b30c37ebb3f0bbc052c1d68de0'

  url "https://www.mitsuba-renderer.org/releases/current/macos/Mitsuba%20#{version}.dmg"
  name 'Mitsuba'
  homepage 'https://www.mitsuba-renderer.org/'

  app 'Mitsuba.app'
end
