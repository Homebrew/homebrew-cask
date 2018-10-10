cask 'autopano-giga' do
  version '4.4.2.400,2018-09-10'
  sha256 '0d5808f3904dae5937411ba7efdb275eaef2dea957c89b869c6c637aa29b824a'

  url "https://cdn-download.kolor.com/apg/#{version.before_comma}_#{version.after_comma}/AutopanoGiga_Mac_#{version.major_minor_patch.no_dots}_#{version.after_comma}.dmg"
  name 'Autopano Giga'
  homepage 'https://www.kolor.com/autopano/'

  pkg "Autopano Giga #{version.major_minor}.pkg"

  uninstall pkgutil: [
                       "com.kolor.pkg.AutopanoGiga.#{version.major_minor}",
                       'com.kolor.pkg.Bridge_plugin',
                       'com.kolor.pkg.Lightroom_plugin',
                       'com.kolor.pkg.plugin.picasa',
                     ]
end
