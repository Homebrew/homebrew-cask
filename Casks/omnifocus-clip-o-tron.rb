cask 'omnifocus-clip-o-tron' do
  version '1.0.1'
  sha256 '5de811bbca02f67e5669bd3d32f7d0c78eca220769af154d1358805ab7e004a6'

  url "http://www.omnigroup.com/ftp/pub/software/MacOSX/10.9/OmniFocus-Clip-o-Tron-Installer-#{version}.dmg"
  name 'OmniFocus Clip-O-Tron'
  homepage 'https://support.omnigroup.com/omnifocus-clip-o-tron'
  license :commercial

  installer manual: 'OmniFocus Clip-o-Tron.app'
end
