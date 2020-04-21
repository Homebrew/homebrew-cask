cask 'netxms-console' do
  version '3.2.493'
  sha256 '4b719422be4cfaf46d2a5ce243e9282aa8edf6aa030f72a6770e00d2896be7bb'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
