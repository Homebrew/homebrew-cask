cask 'aria-maestosa' do
  version '1.4.13c'
  sha256 '59d77eb575ed6dcd4d3caeddac78dfe26f44c272e25e480e55733f15428d0946'

  url "https://downloads.sourceforge.net/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  appcast 'https://sourceforge.net/projects/ariamaestosa/rss'
  name 'Aria Maestosa'
  homepage 'http://ariamaestosa.sourceforge.net/'

  app "AriaMaestosa-#{version}/Aria Maestosa.app"

  zap trash: [
               '~/Library/Preferences/AriaMaestosa',
               '~/Library/Saved Application State/org.AriaMaestosa.savedState',
               '~/Library/Autosave Information/org.AriaMaestosa.plist',
               '~/Library/Application Support/Aria Maestosa',
             ]
end
