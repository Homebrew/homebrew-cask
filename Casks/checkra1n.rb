cask 'checkra1n' do
  version '0.9.8.2'
  sha256 '8137a379774904450180054fca898044d3588b8da73edf853e956b1060e5e79b'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
