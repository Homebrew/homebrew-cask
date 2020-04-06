cask 'netxms-console' do
  version '3.2.477'
  sha256 '1d6febbd9547474ee26a042f0447ddd5f1b47f53b837e66f2fd408ae2c53a7b3'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
