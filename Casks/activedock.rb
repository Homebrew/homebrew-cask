cask 'activedock' do
  version '210,1552575942'
  sha256 'da4b3692b9f85e8abb59cc657741be1fbf6e5023bf10db7443d1e617138f6a30'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml'
  name 'ActiveDock'
  homepage 'https://www.noteifyapp.com/activedock/'

  depends_on macos: '>= :sierra'

  app 'ActiveDock.app'
end
