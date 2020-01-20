cask 'augur' do
  version '1.16.7'
  sha256 '2d0c732664b0da0f15e907661516efc5314de1cb8fefd53b315c6535d288f901'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
