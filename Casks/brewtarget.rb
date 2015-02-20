cask :v1 => 'brewtarget' do
  version '2.1.0'
  sha256 '5bd3542db7dd44e7e95759c68ad6002046ad145ddee35adefa43bfab1ada3fe2'

  url 'https://launchpad.net/brewtarget/trunk/2.1.0/+download/Brewtarget-2.1.0-installer.dmg'
  name 'brewtarget'
  homepage 'http://www.brewtarget.org/'
  license :oss

  app 'brewtarget.app'
end
