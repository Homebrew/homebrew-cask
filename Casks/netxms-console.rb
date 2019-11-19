cask 'netxms-console' do
  version '3.0.2329'
  sha256 '0ce973e2df8edaa4c72c7b102888364d21ff943f2da340b2ba1e696109487d7f'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
