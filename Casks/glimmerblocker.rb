cask 'glimmerblocker' do
  version '1.6.6'
  sha256 'd207aa133986b8f82687fd80eda82ff6c03f71c9231294286a04df1a05b5deb0'

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  appcast 'https://glimmerblocker.org/site/rss/sparkle-final.xml'
  name 'GlimmerBlocker'
  homepage 'https://glimmerblocker.org/'

  pkg 'GlimmerBlocker.pkg'

  uninstall pkgutil:   'org.glimmerblocker.pkg',
            launchctl: [
                         'org.glimmerblocker.proxy',
                         'org.glimmerblocker.updater',
                       ],
            delete:    '/Library/PreferencePanes/GlimmerBlocker.prefPane'

  zap trash: [
               '/Library/GlimmerBlocker',
               '/Library/Logs/GlimmerBlocker',
             ]

  caveats <<~EOS
    You must deactivate GlimmerBlocker from the installed preference
    pane before uninstalling. See http://glimmerblocker.org/wiki/Uninstall.
  EOS
end
