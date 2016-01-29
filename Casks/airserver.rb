cask 'airserver' do
  version '6.0.3'
  sha256 'b4d08ac1db459ea01ae1812a11421ad1f380ed417eb6b857b5142c86b3e09d29'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '589941c7321e53292e19f449569944dd44a83a280e70d8243865145ce380876d'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
