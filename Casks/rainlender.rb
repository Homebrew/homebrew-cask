cask 'rainlender' do
  version '2.13.1'
  sha256 '22fc298423a0bc9c2e3ab8b0752ba353eed2cdd38695cda24d542b138ad511a9'

  url "https://http://www.rainlendar.net/download/Rainlendar-Pro-#{version}.dmg"
  name 'rainlender'
  homepage 'http://www.rainlendar.net/'
  license :commercial

  app 'Rainlendar2-Pro.app'
end
