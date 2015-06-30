cask :v1 => 'liclipse' do
  version '2.1.0'
  sha256 '3b6077e3208d92ac313f685f05fd20aee6705df9461db88a9141899969a7b623'

  url 'https://googledrive.com/host/0BwwQN8QrgsRpLVlDeHRNemw3S1E/LiClipse%202.1.0/liclipse_2.1.0_macosx.cocoa.x86_64.dmg'
  name 'LiClipse'
  homepage 'http://www.liclipse.com/'
  license :other
  
  suite 'liclipse', :target => 'LiClipse'
  app 'liclipse/LiClipse.app'
  binary 'liclipse/LiClipse.app/Contents/MacOS/LiClipse'
end
