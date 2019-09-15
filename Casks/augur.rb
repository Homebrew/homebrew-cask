cask 'augur' do
  version '1.16.0'
  sha256 'dec23fbd3f78c9c07186e455e3fe860f89abf1ed54fb0397f2db4bbdb6a2f43e'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
