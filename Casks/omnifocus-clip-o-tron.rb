cask 'omnifocus-clip-o-tron' do
  version '1.1'
  sha256 'a34bf03061a4a8be126e1f5835141a40a70b1ab28e67fb87a649b9d0d713ca69'

  url "https://www.omnigroup.com/ftp/pub/software/MacOSX/10.10/OmniFocus-Clip-o-Tron-Installer-#{version}.dmg"
  name 'OmniFocus Clip-O-Tron'
  homepage 'https://support.omnigroup.com/omnifocus-clip-o-tron'

  installer manual: 'OmniFocus Clip-o-Tron.app'
end
