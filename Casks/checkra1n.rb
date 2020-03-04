cask 'checkra1n' do
  version '0.9.8.1'
  sha256 'bf055708225db20f51948690563ec87de1a4d53a4dada993e9f4ff70636873ed'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
