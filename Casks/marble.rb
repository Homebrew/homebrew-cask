cask 'marble' do
  version '2.2.0'
  sha256 '51397a9723571b59d6773b7126ccdc1402b81d3023fb0d7e0828443e33d91e41'

  url "http://files.kde.org/marble/downloads/MacOSX/Marble-#{version}.pkg"
  appcast 'https://marble.kde.org/install.php',
          checkpoint: 'd2ee5a5dd31d6e3cc5fbf35eefbd6e0203fb51867b81f50ab115cbb1bd625bab'
  name 'Marble'
  homepage 'https://marble.kde.org/'

  pkg "Marble-#{version}.pkg"

  uninstall pkgutil: 'org.kde.marbleV220.Marble.pkg'
end
