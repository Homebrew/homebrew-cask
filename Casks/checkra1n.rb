cask 'checkra1n' do
  version '0.10.2'
  sha256 '043fc022a54653e9b2b92d7d2da1d6316c8d462fd181780e1d1a23b9d40c4ce2'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
