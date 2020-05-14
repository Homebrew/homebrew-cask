cask 'checkra1n' do
  version '0.10.1'
  sha256 '33356fd4adabe88b787e1db36ac624833c32416124a40ec00d3089d659f21a5f'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
