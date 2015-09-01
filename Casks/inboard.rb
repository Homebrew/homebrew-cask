cask :v1 => 'inboard' do
  version '1.0.4-276'
  sha256 '51e950163423f6131d7e3b5c2c61493398a05decc1c4467acd647e07bd92a892'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => 'd8e40af66ec5e41d5f88c2b4d1f17aa92757ae2f9c91fb9f4612a4a05f7a30ab'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
