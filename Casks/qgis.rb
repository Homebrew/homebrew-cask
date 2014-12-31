cask :v1 => 'qgis' do
  version '2.6.1-2'
  sha256 '683ef0c37c0ddbb375189d4fc3ee7713b064c361ce0c68bf29d36b2cd77c85fd'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :gpl
  pkg 'Install QGIS.pkg'

  uninstall :pkgutil => 'org.qgis.qgis-*'

  caveats <<-EOS.undent
    #{token} requires the GDAL framework and Matplotlib to be installed first,
    otherwise the installation will fail. In case of problems, try installing
    them:

      brew cask install gdal-framework matplotlib

    and then reinstall QGIS

      brew cask uninstall qgis && brew cask install qgis
  EOS
end
