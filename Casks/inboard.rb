cask :v1 => 'inboard' do
  version '1.0.3-274'
  sha256 'fdbb86224f14d21095b950983af5121e0f2eaf7f8601acf2fd659b4c93bf8235'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => 'd8e40af66ec5e41d5f88c2b4d1f17aa92757ae2f9c91fb9f4612a4a05f7a30ab'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
