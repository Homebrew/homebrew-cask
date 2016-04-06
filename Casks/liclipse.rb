cask 'liclipse' do
  version '2.5.4'
  sha256 '4056c3282455f84dc6ceab9127df1123539bc63820e054d362e16fd617d297c2'

  # googledrive.com is the official download host per the vendor homepage
  url "https://googledrive.com/host/0BwwQN8QrgsRpLVlDeHRNemw3S1E/LiClipse%20#{version}/liclipse_#{version}_macosx.cocoa.x86_64.dmg"
  name 'LiClipse'
  homepage 'http://www.liclipse.com/'
  license :commercial

  app 'liclipse/LiClipse.app'
end
