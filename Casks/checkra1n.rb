cask 'checkra1n' do
  version '0.9.7'
  sha256 'a43bdd2a64967b70cda422b26e8e5585d7c37c28cbe42a67474143b5de586000'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
