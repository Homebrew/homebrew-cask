cask 'netxms-console' do
  version '3.0.2258'
  sha256 '939dbc81df8b62176e6558941aefa8aee6c260739f3b9d9de8522f45f3ebe846'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
