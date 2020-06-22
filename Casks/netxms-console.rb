cask 'netxms-console' do
  version '3.4.178'
  sha256 '3b8259f768ddccaa18e502520ac9a3212b338953f2fa8b2ed2deaa59b7fe9f85'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'

  zap trash: [
               '~/.nxmc',
             ]
end
