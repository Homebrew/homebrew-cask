cask 'quik' do
  version '2.2.0.5791'
  sha256 '25d1c3df987e5546a76e9fcbab978e326c3c864e83f7ffabba403af47d22b166'

  url "https://software.gopro.com/Mac/Quik-MacInstaller-#{version}.dmg"
  name 'GoPro Quik'
  homepage 'https://shop.gopro.com/softwareandapp/quik-%7C-desktop/Quik-Desktop.html'

  pkg 'Quik.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProApp'
end
