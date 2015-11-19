cask :v1 => 'bose-soundtouch' do
  version '9.0.41.11243'
  sha256 '3eb78048bc8aa46b9d2613ff28d760fa7e47133384aca74f44aab4bc10c95f8a'

  url "http://worldwide.bose.com/downloads/assets/updates/soundtouch_app-m/SoundTouch-#{version}-osx-10.9-installer.app.dmg"
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com'
  license :closed

  depends_on :macos => '>= :mavericks'

  installer :script => 'SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh',
            :args => %w[--mode unattended],
            :sudo => true

  uninstall :script => {
    :executable => '/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh',
    :args => %w[--mode unattended],
    :sudo => true
  }
end
