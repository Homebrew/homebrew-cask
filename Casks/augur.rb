cask 'augur' do
  version '1.10.0'
  sha256 '22be4d8be43695384069665ed0a3d782f11ec493db946207ed8dda1808e9101a'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
