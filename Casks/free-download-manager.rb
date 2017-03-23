cask 'free-download-manager' do
  version '5.1.26'
  sha256 '6d943b77ae74c280ec1fd8e26e4d5427911505b71df671164c60236d9edafc33'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
