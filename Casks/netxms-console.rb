cask 'netxms-console' do
  version '3.0.2284'
  sha256 'a5c731dca762f1134ed82b5c6dfdf5e94ac5c53238c255f3a32ed860bf4f9b83'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
