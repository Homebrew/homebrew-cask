cask 'liclipse' do
  version '2.1.0'
  sha256 '3b6077e3208d92ac313f685f05fd20aee6705df9461db88a9141899969a7b623'

  # googledrive.com is the official download host per the vendor homepage
  url "https://googledrive.com/host/0BwwQN8QrgsRpLVlDeHRNemw3S1E/LiClipse%20#{version}/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'http://www.liclipse.com/'
  license :commercial

  app 'liclipse/LiClipse.app'
end
