cask 'netxms-console' do
  version '3.2.400'
  sha256 '3b830a4f6069bde867566c1e8951443ddb8f1c25e9c222527cd0430a258914a0'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
