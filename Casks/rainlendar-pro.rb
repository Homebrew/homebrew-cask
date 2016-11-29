cask 'rainlendar-pro' do
  version '2.13.1'
  sha256 '22fc298423a0bc9c2e3ab8b0752ba353eed2cdd38695cda24d542b138ad511a9'

  url "http://www.rainlendar.net/download/Rainlendar-Pro-#{version}.dmg"
  name 'Rainlendar Pro'
  homepage 'http://www.rainlendar.net/'

  app "Rainlendar#{version.major}-Pro.app"
end
