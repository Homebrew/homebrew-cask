cask 'aria-maestosa' do
  version '1.4.13'
  sha256 'a3a04954ff7258141d4762659f49a204e42f24a06fab6ba318f47a749e6398c0'

  # downloads.sourceforge.net/ariamaestosa was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  appcast 'https://sourceforge.net/projects/ariamaestosa/rss'
  name 'Aria Maestosa'
  homepage 'https://ariamaestosa.sourceforge.io/'

  app "AriaMaestosa-#{version}/Aria Maestosa.app"

  zap trash: [
               '~/Library/Preferences/AriaMaestosa',
               '~/Library/Saved Application State/org.AriaMaestosa.savedState',
               '~/Library/Autosave Information/org.AriaMaestosa.plist',
               '~/Library/Application Support/Aria Maestosa',
             ]
end
