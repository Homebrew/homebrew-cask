cask 'activedock' do
  version '190,1540738589'
  sha256 'acf8a9c9712c01e6d7ec30406a80c83085ad364160729242816263186788147c'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :sierra'

  app 'ActiveDock.app'
end
