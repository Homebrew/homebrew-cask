cask 'checkra1n' do
  version '0.9.3.2'
  sha256 'bbdddefe6d49142c1ef3a994bab32cdc3eed7e3033f7a34beae20330f3ff2ce8'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
