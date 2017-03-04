cask 'bragi-updater' do
  version '1.1.0'
  sha256 '305fd036fae31b765455c8dab9176f12b8f98a526d45ead0bb9edc41a2940c86'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  appcast 'http://update.bragi.com/',
          checkpoint: 'bd743631d7dd53de5b729500723b1b0ce47412b4ee8113dbb29a612362c1d49d'
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
