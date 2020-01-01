cask 'augur' do
  version '1.16.6'
  sha256 '298c0612a9ffb6baf94ec4aa35965e80bb68c77d8f0aaed458713fec3550ea74'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
