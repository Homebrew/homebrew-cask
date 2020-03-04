cask 'netxms-console' do
  version '3.1.361'
  sha256 '4a07c1312acb7921a7928b75f65aee3856e5a73b32fdd42feb53b02344587d75'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
