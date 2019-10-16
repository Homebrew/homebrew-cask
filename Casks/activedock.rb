cask 'activedock' do
  version '263,1570798654'
  sha256 '2bff0d0151e11d0ab8ec9e4d0d6a326d9508ba883f22839c4507fa04bd1bcae2'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :sierra'

  app 'ActiveDock.app'
end
