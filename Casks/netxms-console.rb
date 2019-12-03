cask 'netxms-console' do
  version '3.1.242'
  sha256 '57968fe224f0883af0a649f379e55456477a26a7816cdb8a8bafe1276d12bf36'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
