cask 'netxms-console' do
  version '2.2.16'
  sha256 '4a049aa5ec96d4f8d3695ea38e0d1978240ea4f6825d32a899a383c5952d46b3'

  url "https://netxms.org/download/releases/#{version.major_minor}/#{version}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
