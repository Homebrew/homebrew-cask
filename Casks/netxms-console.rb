cask 'netxms-console' do
  version '3.2.484'
  sha256 '5e6e5adeee6295ad6358caec7d9f53b1dec459e1b50951fa5cbc9c29fdb56432'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
