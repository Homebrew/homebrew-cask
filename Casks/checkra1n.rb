cask 'checkra1n' do
  version '0.9.3'
  sha256 'f7a16ee122a6d7c8c9a0429db1a0b8fb4ecc3543684713eda951f19b30c02c11'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
