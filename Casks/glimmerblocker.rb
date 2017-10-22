cask 'glimmerblocker' do
  version '1.6.6'
  sha256 'd207aa133986b8f82687fd80eda82ff6c03f71c9231294286a04df1a05b5deb0'

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  appcast 'https://glimmerblocker.org/site/rss/sparkle-final.xml',
          checkpoint: 'c93a38d80349569f9b70ae6132ebf7ed02725268c76804349e3570ca18dd48af'
  name 'GlimmerBlocker'
  homepage 'https://glimmerblocker.org/'

  pkg 'GlimmerBlocker.pkg'

  uninstall pkgutil:   'org.glimmerblocker.pkg',
            launchctl: [
                         'org.glimmerblocker.proxy',
                         'org.glimmerblocker.updater',
                       ],
            delete:    '/Library/PreferencePanes/GlimmerBlocker.prefPane'

  zap       delete: [
                      '/Library/GlimmerBlocker',
                      '/Library/Logs/GlimmerBlocker',
                    ]

  caveats <<~EOS
    You must deactivate GlimmerBlocker from the installed preference
    pane before uninstalling. See http://glimmerblocker.org/wiki/Uninstall.
  EOS
end
