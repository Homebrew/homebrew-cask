cask 'netxms-console' do
  version '3.4.232'
  sha256 '5ca448e1aa74f8dced966b82d372eab6c0531b8548c5c3ae29ce2f180cf564c6'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'

  zap trash: '~/.nxmc'
end
