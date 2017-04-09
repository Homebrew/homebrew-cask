cask 'autopano-giga' do
  version '4.4.0.400,2017-03-25'
  sha256 '836a0b67cd4a6553efc6f19d7440561ea4c521952949551a4229f13583588682'

  url "http://cdn-download.kolor.com/apg/#{version.before_comma}_#{version.after_comma}/AutopanoGiga_Mac_#{version.major_minor_patch.no_dots}_#{version.after_comma}.dmg"
  name 'Autopano Giga'
  homepage 'http://www.kolor.com/autopano/'

  pkg "Autopano Giga #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       "com.kolor.pkg.AutopanoGiga.#{version.major_minor}",
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
