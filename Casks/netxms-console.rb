cask 'netxms-console' do
  version '2.2.17'
  sha256 '1a47fe41bc449d1096fa925382a205337a3066df82d287ad071cd57b5445fb0e'

  url "https://netxms.org/download/releases/#{version.major_minor}/#{version}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
