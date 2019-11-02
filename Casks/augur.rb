cask 'augur' do
  version '1.16.4'
  sha256 '0841eede1d41a00465c31b65b74d8ad52bfd640c8ced9c473456b95e0e3a73e7'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
