cask 'free-download-manager' do
  version '5.1.15'
  sha256 '7ad5ef681371f290bef80ef1fd1f2856e5873c252183da7066601f79d6fa45c9'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
