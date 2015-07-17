cask :v1 => 'genymotion' do
  version '2.5.1'
  sha256 '1201957a881c352c7170a5f976ea5cb354b6a1d69d88b3a463bb7ed3555545aa'

  depends_on :cask => 'virtualbox'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'
  license :commercial

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
end
