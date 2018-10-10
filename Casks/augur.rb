cask 'augur' do
  version '1.4.0'
  sha256 '0da999d014547f1d7d9715939f42a4371c5bf13cb6f834c5205cc58a8307947f'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
