cask 'netxms-console' do
  version '3.0.2258'
  sha256 '1f545699f217f1c6ed76de6a22acdd6547d371fe6acdf4a702e215c5c3b405f7'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
