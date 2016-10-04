cask 'quik' do
  version '2.0.0.4946'
  sha256 'aebf1d18b112b0d91d2abf1dbbf4e8c615704366ee6f7c010392da94e2bd3c5d'

  url "https://software.gopro.com/Mac/Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'
  license :commercial

  conflicts_with cask: 'gopro-studio'

  pkg 'Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
