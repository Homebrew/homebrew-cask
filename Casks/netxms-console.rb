cask 'netxms-console' do
  version '3.3.320'
  sha256 '16b83367034961be803d60b8fb0b031056f42c6625d7ca9dd875e7e7a7535e1d'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
