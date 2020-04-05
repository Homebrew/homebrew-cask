cask 'netxms-console' do
  version '3.2.472'
  sha256 'a020a79e5a1b18d6a76d16fcef485402e24419bc2eee15a4f1c92f74955c2d03'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
