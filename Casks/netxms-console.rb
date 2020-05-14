cask 'netxms-console' do
  version '3.3.277'
  sha256 '094ec9a711cdefcc6639db28c05a569fd3d8051f305b1e70b8914979668d1180'

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name 'NetXMS Management Console'
  homepage 'https://netxms.org/'

  app 'NetXMS Console.app'
end
