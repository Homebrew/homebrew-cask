cask 'netxms-console' do
  version '3.1.300'
  sha256 'fba16e71742d0b0e2dcf3ac98fce5c07e46638ab40156ddfdb408998a68ef51a'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
