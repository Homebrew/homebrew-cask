cask 'checkra1n' do
  version '0.9.6'
  sha256 '599fa4255983134d95790cd71c808a73123bad2789cc35c146e41e6dd0c6dc8b'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
