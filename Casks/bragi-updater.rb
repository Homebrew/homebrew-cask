cask 'bragi-updater' do
  version '1.1.0'
  sha256 '305fd036fae31b765455c8dab9176f12b8f98a526d45ead0bb9edc41a2940c86'

  url "http://update.bragi.com/bin/Bragi%20Updater-#{version}.dmg"
  name 'Bragi Updater'
  homepage 'http://update.bragi.com/'

  app 'Bragi Updater.app'
end
