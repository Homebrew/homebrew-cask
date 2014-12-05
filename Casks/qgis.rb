cask :v1 => 'qgis' do
  version '2.4.0-1'
  sha256 '785c268997651b547dd1261a86aa3b805a3d66c9706c0afb42758e1a2bb9ae0a'

  url "http://www.kyngchaos.com/files/software/qgis/QGIS-#{version}.dmg"
  homepage 'http://www.kyngchaos.com/software/qgis'
  license :unknown
  pkg 'Install QGIS.pkg'

  uninstall :pkgutil => 'org.qgis.qgis-*'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} requires the GDAL framework and Matplotlib to be installed first,
    otherwise the installation will fail. In case of problems, try installing
    them:

      brew cask install gdal-framework matplotlib

    and then reinstall QGIS

      brew cask uninstall qgis && brew cask install qgis
  EOS
end
