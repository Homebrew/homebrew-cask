cask 'netxms-console' do
  version '3.1.343'
  sha256 '69f520fd221ab51c23a6df5c1ecbe26a3008a47c6e92c73e8b7fe0cc5046f106'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
