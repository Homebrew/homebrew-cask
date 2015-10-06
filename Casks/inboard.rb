cask :v1 => 'inboard' do
  version '1.0.4-276'
  sha256 '51e950163423f6131d7e3b5c2c61493398a05decc1c4467acd647e07bd92a892'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => '36e91380c0d8bee105d3ab7fd0390a6a55710d4e0ab4860e9be680b722945cdb'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
