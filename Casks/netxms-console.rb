cask 'netxms-console' do
  version '3.2.451'
  sha256 '7452882587dce16a8190687876f119961262c5bd2e85ee62e47d5e88f63568bf'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
