cask 'on1-photo-raw' do
  version '2018'
  sha256 'a1fb8465877bb27c600a8dfeebba62da6e40e70f5ddd56e2b1bdfb6833e46eb5'

  # ononesoft.cachefly.net was verified as official when first introduced to the cask
  url "http://ononesoft.cachefly.net/photoraw#{version}/mac/gm_5757/ON1_Photo_RAW_#{version}.dmg"
  name 'On1 Photo RAW'
  homepage 'https://www.on1.com/products/photo-raw/'

  pkg "ON1 Photo RAW #{version}.pkg"

  uninstall pkgutil: 'com.ononesoftware.pluginsuite1200.premium',
            delete:  [
                       "/Applications/ON1 Photo RAW #{version}",
                       "/Library/Application Support/ON1/ON1 Layers #{version}",
                       "/Library/Application Support/Adobe/Plug-Ins/CC/ON1 Develop #{version}-suite.plugin",
                       "/Library/Application Support/Adobe/Plug-Ins/CC/ON1 Effects #{version}-suite.plugin",
                       "/Library/Application Support/Adobe/Plug-Ins/CC/ON1 Resize #{version}-suite.plugin",
                     ],
            rmdir:   '/Library/Application Support/ON1'

  zap trash: [
               "~/Library/Application Support/ON1/ON1 Layers #{version}",
               "~/Library/Application Support/ON1/ON1 Photo RAW #{version}",
               "~/Library/Application Support/ON1/ON1 Develop #{version}",
               "~/Library/Application Support/ON1/ON1 Effects #{version}",
               "~/Library/Application Support/ON1/ON1 Resize #{version}",
               "~/Library/Application Support/ON1/Common #{version}",
               "~/Library/Application Support/ON1/Extras #{version}",
               '~/Library/Application Support/ON1/PerfectBrowseCache',
               '~/Library/Application Support/ON1/locale.plist',
               '~/Library/Application Support/ON1/CorruptFiles.log',
               "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/ON1 Enhance #{version}-suite.lrtemplate",
               "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/ON1 Resize #{version}-suite.lrtemplate",
               "~/Library/Application Support/Adobe/Lightroom/External Editor Presets/ON1 Effects #{version}-suite.lrtemplate",
               "~/Library/Application Support/Adobe/Lightroom/Modules/ON1 Resize #{version}-suite.lrplugin",
               "~/Library/Application Support/Adobe/Lightroom/Modules/ON1 Photo RAW #{version}.lrplugin",
               "~/Library/Application Support/com.ononesoftware.ON1PhotoRAW#{version}.premium",
               "~/Library/Preferences/com.ononesoftware.ON1Layers#{version}.plist",
               "~/Library/Preferences/com.ononesoftware.ON1PhotoRAW#{version}.premium.plist",
               "~/Library/Preferences/com.ononesoftware.ON1Browse#{version}.plist",
             ],
      rmdir: '~/Library/Application Support/ON1'
end
